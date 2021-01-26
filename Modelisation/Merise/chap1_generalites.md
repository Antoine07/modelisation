# Modelisation

## Introduction à la méthode Mérise

Clairement elle est orientée données & base de données.

Comment organiser l'information que l'on possède dans un projet ? 

Des méthodes existent comme par exemple la méthode **Mérise**, inventée dans les années 1970. Elle a été définie pour organiser les données massives des entreprises ou organisation.

La méthode Mérise est issue de l'analyse systémique (analyse des système complexe).

Les mauvaises langues ont d'ailleurs trouvées un acronyme pour définir Mérise : *Méthode éprouvée pour Retarder Indéfiniment la Sortie des études.*

Pour résumer la méthode Mérise donne des étapes à l'analyse des données en vue de concevoir **un système logique automatique** pour gérer leurs échanges de manière relationnelle :

1. On part de l'expression d'un besoin : gérer une bibliothèque par exemple.
2. On fait un MCD => Modèle de conception des données
3. MLD => modèle logique des données. Le préalable nécessaire à la conception des tables d'une base de données.
4. MPD => Modèle physique des données : la base de données et les tables.

5. Automatisation de l'information (...)

## Application

Prenons un cahier des charges : une biliothèque de disque.

### Exercice définir les Entités

1. Essayez d'imaginer 5 "Entités" pour une bibliothèque de disques vinyles en les écrivants sur une feuille de papier. 
*Par exemple une Etagère est une Entité appartenant à une bibliothèque.*

2. Décrivez maintenant les attributs de chaque Entité. Définissez au maximun 4 attributs.
*Par exemple le nom, largeur et hauteur sont les attributs d'une Etagère.*

Utilisez les Entités que nous avons trouvé au 1.

3. Définissez maintenant simplement les relations entre les Entités à l'aide d'un verbe. Vous pouvez faire un dessin sans les attributs.
*Pour se faire trouver un verbe qui relie deux Entités : un Disque est rangé sur une Etagère*

![relation](images/relation_01.jpg)

4. Définissez la cardinalité entre les relations. Regardez l'image ci-dessous vous codifiez les relations comme suit : (x,y).

*Un Disque est rangé sur une Etagère (1, 1). Et une Etagère contient 0 à n Disque(s)*

![relation](images/relation_02.jpg)


## Exercice 2 shop

On crée l'Entité Magasin. On se demande si un disque que l'on prête à la bibliothèque se trouve dans un magasin. Essayez de traiter cet information dans notre MCD. Faites un dessin.

## Exercice définir les types

Reprenez l'exercice précédent et définissez les types de chaque attributs.

## Exercice clé primaire

Une clé primaire permet d'identifier dans nos Entités de manière unique un tuple ou une ligne de l'Entité. La clé primaire peut être définie par un ou plusieurs attribut(s). Par exemple nom, adresse ou le nom et email dans l'Entité Employers :

![primary](images/primary_01.jpg)

Lorsque vous ne pouvez pas définir une clé à partir des attributs d'une Entité alors on ajoute un attribut id de type entier.

Une clé primaire définit une valeur ou un tuple de valeur unique. Elle ne peut également être nulle. Nous verrons également que dans une base de données elle définit un index pour accélérer les recherche en base de données.

Trouvez toutes les clés primaires des Entités.

## Association 1:N

Définition : c'est une association (relation) qui a les cardinalités maximales positionnées à 1 d'un côté de l'association et à n de l'autre. On rappelle que les relations sont définies naturellement comme suit : (min, max).

## Association N:N

Définition : c'est une association (relation) qui a les cardinalités maximales positionnées à n d'un côté de l'association et à n de l'autre. On rappelle que les relations sont définies naturellement comme suit : (min, max).

## Association 1:1

Définition : c'est une association (relation) qui a les cardinalités maximales positionnées à 1 d'un côté de l'association et à 1 de l'autre. On rappelle que les relations sont définies naturellement comme suit : (min, max).

### Exercice associations

Trouvez toutes les relations 1:N, N:N et 1:1 dans notre projet si elles existent.

## Clé étrangère

Définition :  elle est créée dans la relation/association correspondante à l'Entité côté 1 (max). Elle permet de mettre en relation deux Entités sans ambiguité. Elle possède le même type que la clé primaire qu'elle référence. Et n'est pas unique comme une clé primaire. C'est également au sens base de données un index.

Une Entité peut avoir plusieurs clés étrangères.

### Exercice Clé étrangère

Déterminez toutes les clés étrangères dans les relations 1:N dans notre projet. Voyez l'exemple suivant :

```text
               N:1
Clients (0,n) passer  (1,1) Commandes 

Clients
- id number PK
- nom string
- adresse string

Commandes
- code number PK
- date
- #id_client number  <-- création de la clé étrangère
```

## Association de type N:N

**Définition** : Une association de type N:N (cardinalité maximale des deux côtés) se traduit par la
création d'une Entité composée des clés étrangères référençant les relations correspondantes aux Entités liées par l'association.

Une Entité de ce type peut être porteuse d'information. Voir l'exercice suivant.

### Exercice Entité N:N 

Complétez les attributs manquants pour les entités d'un magasin ci-dessous. Puis créez l'Entité de la relation correspondante (voir la définition plus haut) et enfin ajoutez les informations qui vous semble pertinente.

```text
Client
- nom string
- adresse string

Articles
- nom
```