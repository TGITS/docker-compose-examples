# Redis

## Mode mono-instance 

### Lancement du conteneur avec l'instance Redis

```
docker-compose -f dc-redis-single.yml up -d
```

### Arrêt du conteneur

```
docker-compose -f dc-redis-single.yml down
```

## Mode cluster

### Lancement du conteneur avec les instances pour le cluster Redis

```
docker-compose -f dc-redis-cluster.yml up -d
```

### Création du cluster

Ouverture d'un _shell_ sur l'une des instances crées dans l'invite de commande via `docker exec -it redis-1 sh` ou en ouvrant un shell sur sur **Docker Desktop**, par exemple sur l'instance `redis-1`.

![Ouverture d'un shell sur une instance Redis depuis Docker Desktop](img/ouverture-shell-sur-instance-redis.png "Ouverture d'un shell sur une instance Redis depuis Docker Desktop")

Puis création du cluster avec le client Redis en ligne de commande : `redis-cli --cluster create redis-1:6379 redis-2:6380 redis-3:6381 redis-4:6382 redis-5:6383 redis-6:6384 --cluster-replicas 1`

![Création du cluster Redis depuis le conteneur d'une des instances](img/redis-cluster-creation.png "Création du cluster Redis depuis le conteneur d'une des instances")

### Arrêt du conteneur

```
docker-compose -f dc-redis-cluster.yml down
```


## Clients lourds

### RedisInsight

* [Site Officiel](https://redis.com/fr/redis-enterprise/redisinsight)

### Another Redis Desktop Manager

* [Site Officiel](https://goanother.com/)
* [GitHub](https://github.com/qishibo/AnotherRedisDesktopManager)
  * [Téléchargement des binaires sur GitHub](https://github.com/qishibo/AnotherRedisDesktopManager/releases)

## Ressources

* [Creating Redis Cluster using Docker](https://medium.com/commencis/creating-redis-cluster-using-docker-67f65545796d)
* [Scaling with Redis Cluster](https://redis.io/docs/manual/scaling/)
* [Redis cluster specification](https://redis.io/docs/reference/cluster-spec/)
* [docker-redis-cluster](https://github.com/Grokzen/docker-redis-cluster)
* [How to Setup & Configure a Redis Cluster Easily](https://www.dltlabs.com/blog/how-to-setup-configure-a-redis-cluster-easily-573120)