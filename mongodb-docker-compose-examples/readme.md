# MongoDB

## Monoinstance

This docker compose file provides a mongodb instance and a mongo-express.

### Running the container with the MongoDB instance

To run the container and the associated **MongoDB** instance with `docker compose`, open a shell, go to the `mongodb-docker-compose-examples/mongodb-single directory` and run the following line :

```txt
docker compose -f dc-mongodb-single.yml up -d
```

### Accessing MongoDB with the CLI in the container

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

### Accessing MongoDB with mongo-express

### Accessing MongoDB with the CLI

* [Mongosh](https://www.mongodb.com/try/download/shell)

### Accessing MongoDB with Compass

[Site officiel](https://www.mongodb.com/products/tools/compass)

**TODO**

### Stopping the container

```txt
docker compose -f dc-mongodb-single.yml down
```

## Ressources

[Documentation](https://www.mongodb.com/docs/) on the [official MongoDB site](https://www.mongodb.com/).
