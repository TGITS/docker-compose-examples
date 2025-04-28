# Redis

## Mode mono-instance

### Lancement du conteneur avec l'instance Redis

```shell
docker compose -f dc-redis-single.yml up -d
```

### Arrêt du conteneur

```shell
docker compose -f dc-redis-single.yml down
```

## Mode cluster

### Lancement du conteneur avec les instances pour le cluster Redis

```shell
docker compose -f dc-redis-cluster.yml up -d
```

### Création du cluster

Ouverture d'un _shell_ sur l'une des instances crées dans l'invite de commande via `docker exec -it redis-1 sh` ou en ouvrant un shell sur sur **Docker Desktop**, par exemple sur l'instance `redis-1`.

![Ouverture d'un shell sur une instance Redis depuis Docker Desktop](img/ouverture-shell-sur-instance-redis.png "Ouverture d'un shell sur une instance Redis depuis Docker Desktop")

Puis création du cluster avec le client Redis en ligne de commande : `redis-cli --cluster create redis-1:6379 redis-2:6380 redis-3:6381 redis-4:6382 redis-5:6383 redis-6:6384 --cluster-replicas 1`

![Création du cluster Redis depuis le conteneur d'une des instances](img/redis-cluster-creation.png "Création du cluster Redis depuis le conteneur d'une des instances")

### Arrêt du cluster

```shell
docker compose -f dc-redis-cluster.yml down
```

### CLI

```shell
docker run -it --network some-network --rm redis redis-cli -h some-redis
```

`docker exec -it postgres /bin/sh`

* `docker exec -it redis /bin/sh`
* `redis-cli`
* `quit` to exit `redis-cli`
* `exit` to exit the shell

## Clients lourds

### RedisInsight

* [Site Officiel](https://redis.io/insight/)

### Another Redis Desktop Manager

* [Site Officiel](https://goanother.com/)
* [GitHub](https://github.com/qishibo/AnotherRedisDesktopManager)
  * [Téléchargement des binaires sur GitHub](https://github.com/qishibo/AnotherRedisDesktopManager/releases)

## WSL

### Pour le mode single

Lors d'un lancement depuis WSL, pour pouvoir accéder aux ports de Redis depuis windows il faut lancer le script suivant :

```powershell
$wslIp=(wsl -d Ubuntu -e sh -c "ip addr show eth0 | grep 'inet\b' | awk '{print `$2}' | cut -d/ -f1") # Get the private IP of the WSL2 instance

netsh interface portproxy delete v4tov4 listenport="6379" # Delete any existing port 6379 forwarding
netsh interface portproxy add v4tov4 listenport="6379" connectaddress="$wslIp" connectport="6379"
```

### Pour le mode cluster

```powershell
$wslIp=(wsl -d Ubuntu -e sh -c "ip addr show eth0 | grep 'inet\b' | awk '{print `$2}' | cut -d/ -f1") # Get the private IP of the WSL2 instance

netsh interface portproxy delete v4tov4 listenport="6379" # Delete any existing port 6379 forwarding
netsh interface portproxy add v4tov4 listenport="6379" connectaddress="$wslIp" connectport="6379"

netsh interface portproxy delete v4tov4 listenport="6380" # Delete any existing port 6380 forwarding
netsh interface portproxy add v4tov4 listenport="6380" connectaddress="$wslIp" connectport="6380"

netsh interface portproxy delete v4tov4 listenport="6381" # Delete any existing port 6381 forwarding
netsh interface portproxy add v4tov4 listenport="6381" connectaddress="$wslIp" connectport="6381"

netsh interface portproxy delete v4tov4 listenport="6382" # Delete any existing port 6382 forwarding
netsh interface portproxy add v4tov4 listenport="6382" connectaddress="$wslIp" connectport="6382"

netsh interface portproxy delete v4tov4 listenport="6383" # Delete any existing port 6383 forwarding
netsh interface portproxy add v4tov4 listenport="6383" connectaddress="$wslIp" connectport="6383"

netsh interface portproxy delete v4tov4 listenport="6384" # Delete any existing port 6384 forwarding
netsh interface portproxy add v4tov4 listenport="6384" connectaddress="$wslIp" connectport="6384"
```

## Ressources

* Site officielle de Redis
  * [Redis configuration file example](https://redis.io/docs/latest/operate/oss_and_stack/management/config-file/)
    * [Configuration file for Redis 7.4.3](https://raw.githubusercontent.com/redis/redis/unstable/redis.conf)
* [Redis Insight configuration settings](https://redis.io/docs/latest/operate/redisinsight/configuration/)
* [Creating Redis Cluster using Docker](https://medium.com/commencis/creating-redis-cluster-using-docker-67f65545796d)
* [Scaling with Redis Cluster](https://redis.io/docs/manual/scaling/)
* [Redis cluster specification](https://redis.io/docs/reference/cluster-spec/)
* [docker-redis-cluster](https://github.com/Grokzen/docker-redis-cluster)
* [How to Setup & Configure a Redis Cluster Easily](https://www.dltlabs.com/blog/how-to-setup-configure-a-redis-cluster-easily-573120)
* [Image Docker Officielle de Redis](https://hub.docker.com/_/redis)
* [How to Use the Redis Docker Official Image](https://www.docker.com/blog/how-to-use-the-redis-docker-official-image/)
* [Image Docker Officielle de Redis Insight](https://hub.docker.com/r/redis/redisinsight)
* [Another Redis Desktop Manager](https://goanother.com/)
  * [GitHub](https://github.com/qishibo/AnotherRedisDesktopManager)
  * [Releases](https://github.com/qishibo/AnotherRedisDesktopManager/releases)
* Docker Networking
  * [Networking overview](https://docs.docker.com/engine/network/)
  * [Network drivers](https://docs.docker.com/engine/network/drivers/)
  * [Les réseaux dans docker-compose.yml](https://www.nicelydev.com/docker/reseau-docker-compose)
  * [Networking With Docker Compose (Quick Guide)](https://www.netmaker.io/resources/docker-compose-network)
  * [Networking in Compose](https://docs.docker.com/compose/how-tos/networking/)
  * [Services top-level elements](https://docs.docker.com/reference/compose-file/services/)
