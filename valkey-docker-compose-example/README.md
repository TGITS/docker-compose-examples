# Docker Compose for Valkey

This [small project](https://github.com/TGITS/docker-compose-examples/tree/main/valkey-docker-compose-examples) provides _docker compose files_ and a minimalist directory structure that creates a local environment for the [Valkey](https://valkey.io/) database to be used for development and experimentation.
Do not use this directly in a production enviroment or at your own risk !

Two _docker compose files_ are provided respectively for Valkey and [Valkey Bundle](https://valkey.io/topics/valkey-bundle/).
Valkey Bundle is a version of Valkey, enhanced with modules like [Valkey JSON](https://github.com/valkey-io/valkey-json), [Valkey Bloom](https://github.com/valkey-io/valkey-bloom), [Valkey Search](https://github.com/valkey-io/valkey-search), and [Valkey LDAP](https://github.com/valkey-io/valkey-ldap).
As such, it allows you to utilize advanced data structures and search capabilities alongside standard Valkey functionality.

In each  two applications are provided by the _docker compose file_:

* A Redis single instance
* [Redis Insight](https://redis.io/insight/) which is a Redis database tool compatible with Valkey.

Valkey is originally an open source fork of [Redis](https://redis.io/) and as such it can be accessed with tool as Redis Insight.

This project has been developed and tested under Windows 11 Professional with [Docker](https://www.docker.com/) and [Rancher Desktop](https://rancherdesktop.io/). However it should work on Windows, MacOs and Linux, with directly [Docker](https://www.docker.com/) or [Docker Desktop](https://www.docker.com/products/docker-desktop/).

In all cases you need to have a container engine compatible with `docker` and `docker compose` available in the command line.

On the container with the [Valkey](https://valkey.io/) database engine, there is also [Valkey CLI](https://valkey.io/topics/cli/).

## Running the containers with the Valkey instance

### Valkey

To run the containers and the associated **Valkey** instance with `docker compose`, open a shell, go to the `valkey-docker-compose-examples/valkey-single` directory and run the following command :

```shell
docker compose -f dc-valkey-single.yml up -d
```

If you are on Windows, you can use WSL or if you have the docker engine installed (via Docker Desktop or Rancher Desktop) you can use Windows Powershell.

![Running docker compose with dc-valkey-single.yml](./pics/docker-compose-result-for-first-time-pull.png)

![The running containers (Valkey and Redis Insight) in Rancher Desktop](./pics/redis_container_in_rancher_desktop.png)

### Valkey Bundle

To run the container associated with this instance with `docker compose`, open a shell, go to the `redis-docker-compose-examples/valkey-bundle` directory and run the following command :

```shell
docker compose -f dc-valkey-bundle.yml up -d
```

## Accessing Valkey with the CLI in the container

In a shell, after running one of the 2 docker compose files, run the following command line : `docker exec -it valkey /bin/sh`.
You are now in a shell in the container.
Then type `valkey-cli`.
You can now type Valkey command. For example `KEYS *` which output the list of keys with any name in the base. In this empty database, there should be none.
Or maybe you can try `INFO modules` which will list the modules available with your instance.
You can type `quit` to exit `valkey-cli` and of course `exit` to exit the shell if need be.

![Opening a the Valkey CLI in the Valkey Container](./pics/)

## Accessing Valkey from the Redis Insight Web Interface

[Redis Insight](https://redis.io/insight/) is available as a Web Application and as a Desktop client. 
In this paragraph we demonstrate the use of the Web Application deployed as a container along side the Valkey instance itself.
You have to connect to the url `http:\\localhost:8001` with your favorite browser.

On your first connexion you will be welcomed with some questions about the privacy settings.

![Privacy settings on first connection to Redis Insight](./pics/first-connection-to-redisinsight-001.png)

![Suggested settings for Redis Insight](./pics/first-connection-to-redisinsight-002.png)

After answering them, you will access the tool in itself.

![Initial screen of Redis Insight (Redis Community with Redis Insight)](./pics/initial-screen-of-redis-insight.png)

In the case of the Docker Compose file with **Redis Community** and **Redis Insight**, as you can see on the previous screenshot, the instance is pre-configured with a database on `localhost:6379`.
You can see that the hostname, is `redis`, this the host name defined in Docker Compose : the instance of Redis Insight is on the _same network_ in docker as Redis, and can access it directly with its defined hostname.

If you wish, you can edit the alias of the database.

![Accesssing the menu to edit the database](./pics/accessing_edit_database.png)

![Editing the database](./pics/editing_database.png)

You can know click on the local database (with alias `redis:6379` on the screenshot - the alias has not been changed in the previous step) to access this base.

![Accessing the database on localhost](./pics/accessing_the_database_on_localhost.png)

The base is empty so there is not much to display.
You land on the _Browser_ page but with the button on the left you can now access the _Workbench_ or the _Analysis Tool_ for example.

![Accessing the workbench](./pics/accessing_the_workbench.png)

You can also install the desktop client which is an Electron app and works in a similar way.
The only attention point is for the Redis instance host : it should be `127.0.0.1` or `localhost`, as you access the instance from _outside docker_ and not `redis`.

With the **Redis Insight** included in **Redis Stack**, the steps are quasi-identical : you have to connect on `http:\\localhost:8001` and the database is already configured. You are even directly directed to it.

![Initial screen of Redis Insight with Redis Stack](./pics/initial-screen-of-redis-insight-redis-stack.png)

In each case, **Redis Insight** offers to load sample data in Redis.

![Loading sample data](./pics/load_sample_data_in_redis.png)

![Loaded sample data](./pics/loaded_sample_data.png)

![Tetris leaderboard example](./pics/loaded_sample_data_tetris_leaderboard.png)

If you want to experiment with Redis but do not readily have available data it is a good way to start.


## Stopping the container

To stop the container, type the following in the shell, from the directory which contains your docker compose file 

* for the `dc-redis-single.yml` docker compose file:

```shell
docker compose -f dc-redis-single.yml down
```

* for the `dc-redis-stack-server.yml` docker compose file:

```shell
docker compose -f dc-redis-stack-server.yml down
```

* for the `dc-redis-stack.yml` docker compose file:

```shell
docker compose -f dc-redis-stack.yml down
```

## Accessing the Valkey instance with Another Redis Desktop Manager

There is at least another alternative for a desktop client : [Another Redis Desktop Manager](https://goanother.com/).
You can download [the binary from GitHub](https://github.com/qishibo/AnotherRedisDesktopManager/releases).
The installation is quite straightforward and you can only get a zip archive.

When you run the executable for the first time, a window similar to the following screenshot should open. 

![First connection to Another Redis Desktop Manager](./pics/ardm_001_first-time_execution.png)

When you click on the button `New Connection` on the left-side top corner, a new window should open.
In this new window you can enter the settings for this new connection.
To connect to the dockerised local instance, you will note that the host should be `127.0.0.1` or `localhost`, as you access the instance from _outside docker_ so to speak. As such the host is not `redis` as it was for the dockerised Redis Insight.

![Creating a new Connection in Another Redis Desktop Manager](./pics/ardm_002_new_connection.png)

After clicking on the `OK` button, the new connection is now available.
When selecting it, you can now access to the Redis instance.

![Accessing the local redis instance in Another Redis Desktop Manager](./pics/ardm_003_accessing_the_local_instance.png)

## Accessing the Valkey instance with the Redis Plugin for Visual Studio Code

There is also an [official Visual Studio Code Plugin](https://redis.io/docs/latest/develop/tools/redis-for-vscode/).

On the first execution of the plugin you will have to answer some questions about the privacy settings.

![Privacy settings on first execution of the Redis plugin](./pics/privacy_settings_for_redis_vs_code_plugin.png)

After configuring this settings to your liking, you should access a _welcome screen_.

![Redis VS Code Plugin welcome screen](./pics/redis_vscode_plugin_welcome_screen.png)

When clicking on the link `+ Connect your database`, you access a form to enter the parameters of the connection.
As for [Another Redis Desktop Manager](https://goanother.com/), to connect to the dockerised local instance, the host should be `127.0.0.1` or `localhost`, as you access the instance form _outside docker_.

![Adding a new Redis Database in the Redis VS Code Plugin](./pics/adding_a_redis_database.png)

You can now access your Redis instance directly from [Visual Studio Code](https://code.visualstudio.com/).

![Accessing the Redis Database from Redis VS Code Plugin](./pics/accessing_redis_from_vs_code.png)

## Ressources

* [Redis official site](https://redis.io/)
  * [Redis configuration](https://redis.io/docs/latest/operate/oss_and_stack/management/config/)
    * [Configuration file for Redis 7.4](https://raw.githubusercontent.com/redis/redis/7.4/redis.conf)
    * [Configuration file for Redis 8](https://raw.githubusercontent.com/redis/redis/8.0/redis-full.conf)
  * [Redis Open Source configuration file example](https://redis.io/docs/latest/operate/oss_and_stack/management/config-file/)
  * [Redis Official GitHub](https://github.com/redis/redis)
* [Official Redis Docker Image](https://hub.docker.com/_/redis)
* [Official Redis Stack Server Docker Image](https://hub.docker.com/r/redis/redis-stack-server)
* [Official Redis Stack Docker Image](https://hub.docker.com/r/redis/redis-stack)
* [How to Use the Redis Docker Official Image](https://www.docker.com/blog/how-to-use-the-redis-docker-official-image/)
* [Redis Insight configuration settings](https://redis.io/docs/latest/operate/redisinsight/configuration/)
* [Official Redis Insight Docker Image](https://hub.docker.com/r/redis/RedisInsight)
* [Another Redis Desktop Manager](https://goanother.com/)
  * [GitHub](https://github.com/qishibo/AnotherRedisDesktopManager)
  * [Releases](https://github.com/qishibo/AnotherRedisDesktopManager/releases)
* [Creating Redis Cluster using Docker](https://medium.com/commencis/creating-redis-cluster-using-docker-67f65545796d)
* [Scaling with Redis Cluster](https://redis.io/docs/manual/scaling/)
* [Redis cluster specification](https://redis.io/docs/reference/cluster-spec/)
* [docker-redis-cluster](https://github.com/Grokzen/docker-redis-cluster)
* [How to Setup & Configure a Redis Cluster Easily](https://www.dltlabs.com/blog/how-to-setup-configure-a-redis-cluster-easily-573120)
