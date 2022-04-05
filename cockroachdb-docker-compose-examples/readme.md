# CockroachDB

[CockroachDB](https://www.cockroachlabs.com/) est une base SQL distribuée et résiliente.

Ce projet propose des fichiers `docker-compose` minimalistes afin de pouvoir lancer un  CockroachDB en mode mono-instance ou en mode _cluster_ afin de pouvoir expérimenter avec cette base.

Sans surprise le sous-répertoire `cockroachdb-single` comprend le fichier `docker-compose` et l'arborescence de répertoires associée pour lancer CockroachDB en mode mono-instance et le sous-répertoire `cockroachdb-cluster` pour le lancer en mode cluster.

Il va sans dire que vous avez besoin d'avoir [Docker Compose](https://docs.docker.com/compose/)

## Mode mono-instance 

Pour lancer CockroachDB avec seul noeud, il faut utiliser le fichier `dc-cockroachdb-single.yml` :

```
docker-compose -f dc-cockroachdb-single.yml up -d --build
```

L'option `--build` n'est utile que pour les premiers lancements et vous pouvez vous en passer lors des lancements suivants :

```
docker-compose -f dc-cockroachdb-single.yml up -d
```

![Conteneur démarré sous Docker Desktop - 1](cockroachdb-single-docker-desktop-screenshot-1.png "Conteneur démarré sous Docker Desktop - 1")

![Conteneur démarré sous Docker Desktop - 2](cockroachdb-single-docker-desktop-screenshot-2.png "Conteneur démarré sous Docker Desktop - 2")

Pour afficher les logs de démarrage : 

```
docker exec -it crdb grep 'node starting' /cockroach/cockroach-data/logs/cockroach.log -A 11
```

Bien sûr avec Docker Desktop vous pouvez directement ouvrir une session sur votre image docker est exécuter la commande directement :

![Affichage des logs de démarrage sous Docker Desktop](cockroachdb-single-docker-desktop-screenshot-3.png "Affichage des logs de démarrage sous Docker Desktop")

Vous pouvez ensuite accéder à l'http://localhost:8080/[IHM Web du cluster] à l'URL : http://localhost:8080/

![WebUi de CockroachDB](cockroachdb-single-webui.png "WebUI de CockroachDB")

CockroachDB utilise le même protocole et la même API que [Postgresql](https://www.postgresql.org/), vous pouvez donc vous connectez dessus depuis un client de base de données qui peut de connecter à Postgresql. Ci-après des copies d'écran de la connexion avec [DBeaver Community](https://dbeaver.io/)

[Connexion de Cockroach à DBeaver - 1](cockroachdb-single-dbeaver-1.png "Connexion de Cockroach à DBeaver - 1")

[Connexion de Cockroach à DBeaver - 2](cockroachdb-single-dbeaver-2.png "Connexion de Cockroach à DBeaver - 2")

Pour utiliser le client SQL en ligne de commande de CockroachDB avec un noeud unique on procéder comme suit :

```
docker exec -it crdb ./cockroach sql --insecure
```

[Client CLI de Cockroach](cockroachdb-single-cli-client.png "Client CLI de Cockroach")

Vous pouvez également le faire en ouvrant une session directement dans Docker Desktop :

[Client CLI de Cockroach depuis Docker Desktop](cockroachdb-single-cli-client-from-docker-desktop.png "Client CLI de Cockroach depuis Docker Desktop")

Enfin, pour arrêter l'instance et le conteneur :

```
docker-compose -f dc-cockroachdb-single.yml down
```

### Mode cluster

#### Lancement uniquement avec Docker sous Windows

En se basant sur les [explications de la documentation officielle pour lancer avec Docker](https://www.cockroachlabs.com/docs/dev/start-a-local-cluster-in-docker-mac.html) en adaptant par rapport à la hiérarchie de répertoires définie dans le projet et en considérant que vous êtes sous Windows.

* Se placer dans le répertoire du projet `cockroachdb-docker-compose-examples\cockroachdb-cluster`
* Créer un _bridge network_ : `docker network create -d bridge cockroachdb_network`
* Démarrer un premier noeud : `docker run -d --name=crdb_1 --hostname=crdb_1 --net=cockroachdb_network -p 26257:26257 -p 8080:8080 -v "%cd%/data/crdb_1:/cockroach/cockroach-data" cockroachdb/cockroach:latest start --insecure --advertise-addr=crdb_1 --join=crdb_1,crdb_2,crdb_3`
* Démarrer un second noeud : `docker run -d --name=crdb_2 --hostname=crdb_2 --net=cockroachdb_network -v "%cd%/data/crdb_2:/cockroach/cockroach-data" cockroachdb/cockroach:latest start --insecure --advertise-addr=crdb_2 --join=crdb_1,crdb_2,crdb_3`
* Puis démarrer un troisième noeud : `docker run -d --name=crdb_3 --hostname=crdb_3 --net=cockroachdb_network -v "%cd%/data/crdb_3:/cockroach/cockroach-data" cockroachdb/cockroach:latest start --insecure --advertise-addr=crdb_3 --join=crdb_1,crdb_2,crdb_3`
* Initialiser le cluster : `docker exec -it crdb_1 ./cockroach init --insecure`
* Affichage des informations de démarrage des différents noeuds
  * `docker exec -it crdb_1 grep 'node starting' cockroach-data/logs/cockroach.log -A 11`
  * `docker exec -it crdb_2 grep 'node starting' cockroach-data/logs/cockroach.log -A 11`
  * `docker exec -it crdb_3 grep 'node starting' cockroach-data/logs/cockroach.log -A 11`

* Pour supprimer le _network_ créé : `docker network rm cockroachdb_network`

#### Avec Docker Compose

Pour lancer CockroachDB en mode cluster, ici avec 3 noeuds, il faut utiliser le fichier `dc-cockroachdb-cluster.yml` :

```
docker-compose -f dc-cockroachdb-cluster.yml up -d --build
```

Comme pour le mode mono-noeud, l'option `--build` n'est utile que pour les premiers lancements.

```
docker-compose -f dc-cockroachdb-cluster.yml up -d --build
```

Une fois les noeuds lancés, il faut initialiser le cluster : 

```
docker exec -it crdb_1 ./cockroach init --insecure
```

Cette initialisation ne doit être effectuée qu'une seule fois : elle n'est à refaire que si vous supprimez les données créées pour chacun des noeuds sous `data/crdb_x`.
A noter que dans la commande ci-dessus, `crdb_1` correspond au noeud défini pour le premier et principal noeud du cluster.

Pour afficher les logs de démarrage : 

```
docker exec -it crdb_1 grep 'node starting' /cockroach/cockroach-data/logs/cockroach.log -A 11
```

Utilisation du client SQL en ligne de commande de CockroachDB avec le cluster :

```
docker exec -it crdb_1 ./cockroach sql --insecure
```

Pour arrêter le cluster il faut lancer :

```
docker-compose -f dc-cockroachdb-cluster.yml down
```

## Interactions avec la base en utilisant le client en ligne de commande

On peut créer une nouvelle base et une table associée après avoir lancé le client en ligne de commande.

Lancement du client en ligne de commande :

```
docker exec -it crdb_1 ./cockroach sql --insecure
```

Création d'une base :

```sql
CREATE DATABASE got;
```

Affichage des bases présentes :

```sql
SHOW DATABASES;
```

Création d'une table :

```sql
CREATE TABLE got.house(id INT PRIMARY KEY, name TEXT UNIQUE, seat TEXT, sigil TEXT, family_words TEXT);
```

Ajout de données dans la table précédemment créée

```sql
INSERT INTO got.house VALUES (1, 'Stark', 'Winterfell', 'A Gray Direwolf', 'Winter is coming');
INSERT INTO got.house VALUES (2, 'Lannister', 'Casterly Rock', 'A Golden Lion', 'Hear me roar !');
INSERT INTO got.house VALUES (3, 'Baratheon', 'King''s Landing', 'A Crowned Black Stag', 'Our is the fury !');
INSERT INTO got.house VALUES (4, 'Greyjoy', 'Pyke', 'A Golden Kraken', 'We do not sow');
INSERT INTO got.house VALUES (5, 'Arryn of the Eyrie', 'The Eyrie', 'Moon and Falcon', 'As high as Honor');
INSERT INTO got.house VALUES (6, 'Targaryen', 'Dragonstone', 'Three-Headed Dragon', 'Fire and Blood');
INSERT INTO got.house VALUES (7, 'Tyrell', 'Highgarden', 'A golden rose, on a green field', 'Growing Strong');
INSERT INTO got.house VALUES (8, 'Martell', 'Old Palace within Sunspear', 'A gold spear piercing a red sun on an orange field', 'Unbowed, Unbent, Unbroken');
```

Changement de base :

```sql
USE got;
```