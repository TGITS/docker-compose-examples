# Simple Docker Compose for a local Dependency Track instance

I have created [a small project on GitHub](https://github.com/TGITS/docker-compose-examples/tree/main/dependency-track-docker-compose-examples) that provides a docker compose file and a basic directory structure to have a local development environment with a [Dependency Track](https://dependencytrack.org/).
Do not use this directly in a production environment or at your own risk, this is really only for a local use.
It is partially based on the [docker compose file provided by Dependency Track](https://dependencytrack.org/docker-compose.yml) as [provided in the official documentation](https://docs.dependencytrack.org/getting-started/deploy-docker/).

Three applications are provided by the _docker compose file_:

* [Dependency Track](https://dependencytrack.org/), the _frontend_ and the _api server_.
* A [PostgreSQL](https://www.postgresql.org/) single instance used by the Dependency Track backend _api server_.
* The source security scanner [Trivy](https://trivy.dev/latest/) which is used by Dependency Track.

This project has been developed and tested under Windows 11 Professional with [Docker](https://www.docker.com/) and [Rancher Desktop](https://rancherdesktop.io/). However it should work on Windows, MacOs and Linux, with directly [Docker](https://www.docker.com/) or [Docker Desktop](https://www.docker.com/products/docker-desktop/).

In all cases you need to have a container engine compatible with `docker` and `docker compose` available in the command line.

Why using Postgresql as the database backing dependency track and not say MySQL or SQLserver ? 
This is because it is the [recommended database for Dependency Track](https://docs.dependencytrack.org/getting-started/database-support/) at the time of writing this README file. As a matter of fact the officialy provided docker compose file also uses PostgreSQL.

So, why creating my own version of the _docker compose file_ ?
I like to have a catalog of my docker compose files, ready to be used within a predefined directory structure.
Doing it for myself, why not share it with the hope it can be useful to somebody else ?
Furthermore in this particular case, I wanted to add a Trivy Server in the docker compose file.

As a matter of fact, the details of the directory structure is explained in the following schemas :

![Structure of the directory associated with the docker file](./pics/directory-structure.png)

## Running the container with Dependency Track

To run the containers and have Dependency Track running using `docker compose`, open a shell on your computer go to the `dependency-track-docker-compose-examples/dt-pg` directory and run the following

```txt
docker compose -f dc-dt-pg.yml up -d
```

If your are on Windows, you can use WSL or if you have the docker engine installed (via Docker Desktop or Rancher Desktop) you can use Windows Powershell.

![Starting the container with docker compose (after the first time)](./pics/starting-the-containers-with-docker-compose.png)

The `.env` file defines the  environment variables used in the docker compose file `dc-dt-pg.yml` for **PostgreSQL** and **Trivy** : on one hand you have `POSTGRES_DB`, `POSTGRES_USER`, `POSTGRES_PASSWORD`, which respectively corresponds to the name of a PostgreSQL database, the name of the user of this database and the password of this user and on the other hand `TRIVY_SERVER_TOKEN` which is used to authenticate to the Trivy Server.

## Accessing Dependency Track

When the containers are up and runnning, the Dependency Track Web Interface will be accessible on `http://localhost:8080/`.
The first time you access to Dependency Track, you will be prompted to change the default password for the user `admin`. 
As indicated in the [official documentation](https://docs.dependencytrack.org/getting-started/initial-startup/) the initial default password is also `admin`.

## Stopping the container

To stop the container, type the following in your shell, from the directory which contains the docker compose file `dc-dt-pg.yml` :

```txt
docker compose -f dc-dt-pg.yml down
```

![Stopping the container with docker compose](./pics/stopping-the-containers-with-docker-compose.png)

## Configuring Dependency Track

The Dependency-Track container can be configured using any of the available configuration properties defined in: https://docs.dependencytrack.org/getting-started/configuration/
All properties are upper case with periods replaced by underscores.

## Using Trivy Server with Dependency Track

![How to configure Trivy in Dependency Track](./pics/trivy-configuration-in-dependency-track.png)

## Using Trivy Client to generate SBOM



## Ressources

If you need a more information related to the PostgreSQL instance or want some other components related to it (for example pgadmin or metabase), there is a dedicated [blog post on Medium](https://medium.com/norsys-octogone/a-local-environment-for-postgresql-with-docker-compose-7ae68c998068) on creating a docker local environmment for PostgreSQL and a [sibling project on GitHub](https://github.com/TGITS/docker-compose-examples/tree/main/postgresql-docker-compose-examples).


