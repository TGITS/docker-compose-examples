# MongoDB

This small project provides a docker compose file and a directory structure that create a local environment for mongodb that can be used for developement and experimentation purposes.
Do not use this directly in a production enviroment or at your own risk !
Two containers are provided :

* One which runs a MongoDB single instance
* One which runs [mongo-express](https://github.com/mongo-express/mongo-express) which is a web-based MongoDB administration interface.

This project has been developed and tested under Windows 11 Professional with Podman and Podman Desktop.
However it should work on Windows, Mac and Linux, with Docker, Docker Desktop or Rancher Desktop.

In all cases you need to have a container engine compatible with docker and `docker compose` available in the command line.

With MongoDB, on the container, [MongoDB Shell](https://www.mongodb.com/try/download/shell) is available. However, you can install it directly on your laptop to access any MongoDB instance accessible on your network if you wish so.

You can also install and use [Compass](https://www.mongodb.com/products/tools/compass). Compass is graphical client to connect to MongoDB instances.

## Running the containers with the MongoDB instance

To run the containers and the associated **MongoDB** instance with `docker compose`, open a shell, go to the `mongodb-docker-compose-examples/mongodb-single` directory and run the following command :

```txt
docker compose -f dc-mongodb-single.yml up -d
```

## Accessing MongoDB with the CLI in the container

![Running docker compose with the dc-mongodb-single.yml](.:img/simple-docker-compose-4-single-node-mongodb-001.png "Running docker compose with the dc-mongodb-single.yml")

In Docker Desktop, Rancher Desktop or Podman Desktop you should be able to see the container running (in the following screenshot it is with Podman Desktop).

![The container running with Podman Desktop](.:img/simple-docker-compose-4-single-node-mongodb-002.png "The container running with Podman Desktop")

To check that all is ok, you can open a shell on the container and connect to the MongoDB instance with the CLI by running `mongosh` as described thereafter :

* To be connected as administrator and be able to see available users and databases
  * `mongosh --port 27017  --authenticationDatabase "admin" -u "root" -p`
    * You will be asked the password (it is defined in the `.env` file in the variable `MONGO_INITDB_ROOT_PASSWORD`)
  * you can show the databases with `show dbs`

![Connection to MongoDB with the CLI from a shell open on the container](.:img/simple-docker-compose-4-single-node-mongodb-003.png "Connection to MongoDB with the CLI from a shell open on the container")

* To be connected as the user defined in the `mongo-init.js` file (`jon_snow`)
  * `mongosh got_db -u "jon_snow" -p`
    * You
  * You can express a query against the database : `db.got_seasons_collection.find({}, { season : 1, year : 1 })`

![Connection to MongoDB with the CLI from a shell open on the container](.:img/simple-docker-compose-4-single-node-mongodb-003.png "Connection to MongoDB with the CLI from a shell open on the container")

If you want to stop the containers, you just have to execute in the command line the following command (considéring you are still in the directory `mongodb-docker-compose-examples/mongodb-single`) :

```txt
docker compose -f dc-mongodb-single.yml down
```

## Accessing MongoDB with mongo-express

## Installing MongoDB Shell on your computer and using it to connect to the MongoDB instance

* [Mongosh](https://www.mongodb.com/try/download/shell)

## Installing Compass and using it to accessing MongoDB

[Site officiel](https://www.mongodb.com/products/tools/compass)

## Some explanations

### Directory structure

### Docker compose file

### Initialisation

## Ressources

[Documentation](https://www.mongodb.com/docs/) on the [official MongoDB site](https://www.mongodb.com/).
