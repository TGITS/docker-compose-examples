# Introduction aux commandes Redis pour manipuler des données

Ce document est une introduction rapide à quelques unes des commandes Redis pour accéder et manipuler des données sous Redis.

C'est plus un aide-mémoire basique qu'un véritable tutorial. 
L'objet est d'aider à utiliser rapidement Redis lorsqu'on a besoin de faire des requêtes depuis la ligne de commande ou depuis un outil comme [Another Redis Desktop Manager](https://goanother.com/) ou [RedisInsight](https://redis.com/fr/redis-enterprise/redisinsight).

L'ensemble des commandes de Redis est documenté sur le site officiel : [https://redis.io/commands](https://redis.io/commands).

## Présentation générale

Les données dans Redis sont enregistrées en utilisant des clés (_keys_).
Les clés sont le plus souvent des chaînes de caractères mais ce n'est pas une obligation.
La valeur associée à cette clé peut être de différents types : une simple chaîne de caractères (`STRING`), une liste (`LIST`), un ensemble (`SET`), un tableau associatif (`HASH`), un ensemble trié (`SORTED SET`) ou un [`HyperLogLog`](https://fr.wikipedia.org/wiki/HyperLogLog).

## Commandes sur les clés

### Récupération de toutes les clés présentes dans la base

Pour récupérer toutes les clés  présentes dans la base Redis correspondant à un certain motif, on peut utiliser la commande `KEYS pattern`.

`pattern` peut avoir la valeur `*` pour récupérer les clés correspondant à n'importe quel motif : `KEYS *`.

**TODO : exemples sous forme de code et copies d'écran associés**

### Connaître le type de données associées à une clé

Commande `TYPE <key>`.

**TODO : exemples sous forme de code et copies d'écran associés**

### Présence d'une clé dans la base

Commande `EXISTS key`.

**TODO : exemples sous forme de code et copies d'écran associés**

### Supprimer une clé et les données qui lui sont associées

Commande `DEL key`. 

**TODO : exemples sous forme de code et copies d'écran associés**

On notera que lorsque Redis arrive à effectuer la suppression, il retourne le nombre de clés qu'il a supprimé.
En effet on peut passer à `DEL` plusieurs clés à supprimer.

**TODO : exemples sous forme de code et copies d'écran associés**

## Commandes sur les ensembles

### Lister les éléments d'un ensemble

Les _ensembles_ correspondent à la structure de données (`SET`).

Pour avoir la liste des éléments d'un ensemble la commande est `SMEMBERS nom_ensemble`.

**TODO : exemples sous forme de code et copies d'écran associés**

### Vérifier si une valeur est dans un ensemble

Pour tester si une valeur est présente dans un ensemble (`SET`), la commande est `SISMEMBER nom_ensemble valeur`.

**TODO : exemples sous forme de code et copies d'écran associés**

Si l'élément est dans l'ensemble la valeur retournée est 1, s'il est absent la valeur retournée est 0.

**TODO : exemples sous forme de code et copies d'écran associés**

## Commandes sur les tableaux associatifs

Les _tableaux associatifs_ correspondent à la structure de données (`HASH`).

### Récupérer tous les champs dans un tableau associatif

Commande `HKEYS key`

**TODO : exemples sous forme de code et copies d'écran associés**

### Récupérer la valeur associé à un champ dans un tableau associatif

Commande `HGET key field`

**TODO : à étoffer avec plusde commandes, des exemples sous forme de code et des copies d'écran associés**

## Commandes sur les listes

Les _tableaux associatifs_ correspondent à la structure de données (`LIST`).

**TODO : à étoffer avec plusde commandes, des exemples sous forme de code et des copies d'écran associés**

## Commandes sur les chaines de caractères

Les _tableaux associatifs_ correspondent à la structure de données (`STRING`).

### Récupération de la valeur associée à une clé de type String

Commande  `GET key`.

**TODO : à étoffer avec plusde commandes, des exemples sous forme de code et des copies d'écran associés**

## Ressources

### RedisInsight

* [Site Officiel](https://redis.com/fr/redis-enterprise/redisinsight)

### Another Redis Desktop Manager

* [Site Officiel](https://goanother.com/)
* [GitHub](https://github.com/qishibo/AnotherRedisDesktopManager)
  * [Téléchargement des binaires sur GitHub](https://github.com/qishibo/AnotherRedisDesktopManager/releases)