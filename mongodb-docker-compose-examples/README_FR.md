# MongoDB

## Mode mono-instance

### Lancement du conteneur avec l'instance MongoDB

Pour lancer le conteneur et l'instance MongoDB avec _docker compose_ :

```txt
docker compose -f dc-mongodb-single.yml up -d
```

Pour vérifier que tout est ok, il est possible d'ouvrir un shell sur le conteneur et de se connecter à l'instance avec la cli en lançant `mongo`.

![Connexion à MongoDB avec la CLI depuis un shell ouvert sur le conteneur](.:img/screenshot-connexion-mongodb-avec-cli.png "Connexion à MongoDB avec la CLI depuis un shell ouvert sur le conteneur")

### Arrêt du conteneur

```txt
docker compose -f dc-mongodb-single.yml down
```

## Clients

### CLI

**TODO**

### Clients Lourds

#### MongoDB Compass

[Site officiel](https://www.mongodb.com/fr-fr/products/compass)

**TODO**

#### Studio 3T

[Site officiel](https://studio3t.com/download-studio3t-free)

**TODO**

## Ressources

[Documentation](https://www.mongodb.com/docs/) sur le [site officiel de MongoDB](https://www.mongodb.com/).
