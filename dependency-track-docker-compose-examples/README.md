# Simple Docker Compose for a local Dependency Track instance

I have created [a small project on GitHub](https://github.com/TGITS/docker-compose-examples/tree/main/dependency-track-docker-compose-examples) that provides a docker compose file and a basic directory structure to have a local development environment with a [Dependency Track](https://dependencytrack.org/).
Do not use this directly in a production environment or at your own risk !

Three applications are provided by the _docker compose file_:

* [Dependency Track](https://dependencytrack.org/) frontend et api server
* A [PostgreSQL](https://www.postgresql.org/) single instance used by the Dependency Track backend
* The source security scanner [Trivy](https://trivy.dev/latest/)

This project has been developed and tested under Windows 11 Professional with [Docker](https://www.docker.com/) and [Rancher Desktop](https://rancherdesktop.io/). However it should work on Windows, MacOs and Linux, with directly [Docker](https://www.docker.com/) or [Docker Desktop](https://www.docker.com/products/docker-desktop/).

In all cases you need to have a container engine compatible with `docker` and `docker compose` available in the command line.

Why Postgresql as the database backing dependency track ? 
Because it is the [recommended database for Dependency Track](https://docs.dependencytrack.org/getting-started/database-support/).

## Running the container with Dependency Track

To run the containers and have Dependency Track running using `docker compose`, open a shell on your computer go to the `dependency-track-docker-compose-examples/dt-pg` directory and run the following

```txt
docker compose -f dc-dt-pg.yml up -d
```

If your are on Windows, you can use WSL or if you have the docker engine installed (via Docker Desktop or Rancher Desktop) you can use Windows Powershell.

The `.env` file defines the  environment variables used in the docker compose file `dc-dt-pg.yml` for **PostgreSQL** and **Trivy** : `POSTGRES_DB`, `POSTGRES_USER`, `POSTGRES_PASSWORD`, which respectively corresponds to the name of a Postgres Database, the name of a user of this database and the password of this user. It also contains `TRIVY_SERVER_TOKEN` which is used by Trivy __(more explications needed here)__.

## Accessing Dependency Track

__TO BE DONE__

## Stopping the container

To stop the container, type the following in your shell, from the directory which contains the docker compose file `dc-postgresql-complete.yml` :

```txt
docker compose -f dc-dt-pg.yml down
```

![Stopping the container with docker compose](./pics/stopping-the-containers-with-docker-compose.png)

## Ressources

If you need a more complete PostgreSQL instance, there is a dedicated [blog post on Medium](https://medium.com/norsys-octogone/a-local-environment-for-postgresql-with-docker-compose-7ae68c998068) on creating a docker local environmment for PostgreSQL.


