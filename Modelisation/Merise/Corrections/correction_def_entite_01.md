# Correction

1. Disques, Etageres, Membres, Employers, Artistes.

2.

Disques     
- titre
- date
- genre  

Etageres     
- nom
- largeur
- hauteur 

Membres     
- nom
- date_inscription
- adresse  
- email

Employers
- nom
- email
- adresse
- grade

Artistes
- nom
- adresse

3. Définissez maintenant simplement les relations entre les Entités à l'aide d'un verbe.

       (min, max)
Disques (1, n)  Créer  (0,n) Artistes
*1 Disque est créé par 1 ou plusieurs Artiste(s).*
*1 Artiste a créé 0 à n Disque(s).*

Disques (1,1) Ranger (0,n) Etagères
*1 disque est rangé sur 1 Etagère.*
*1 Etagere contient de 0 à n Disque(s).*

Disques (0,1) Empreinter (0, n) Membres
*1 disque est empreinté par 0 à 1 Membre.*
*1 Membre a empreinté de 0 à n Disque(s).*

4. Magasin

Magasin
- nom
- adresse

Disque (0,n) Trouver (0, n) Magasin
*1 Disque est trouvé dans 0 à n Magasin(s)*
*1 Magasin on trouve de 0 à n Disque(s).*

Schéma :

![relation](relation_03.jpg)

## Typage des attributs

Disques     
- titre  string 
- date   Date
- genre  string

Etageres     
- nom      string
- largeur  float
- hauteur  float

Membres     
- nom               string
- date_inscription  Date
- adresse           string
- email             string

Employers
- nom       string
- email     string
- adresse   string
- grade     integer

Artistes
- nom      string
- adresse  string

## Clé primary 
## Clé primaire

Disques  
- id number PK (primary key)  
- titre string
- date  Date
- genre string

Etageres     
- id number PK   
- nom string
- largeur string
- hauteur string

Membres     
- nom string 
- email string  PK (primary key)
- date_inscription Date
- adresse  string

Employers
- nom Date
- email string PK (primary key)
- adresse Date
- grade number

Artistes
- id number PK (primary key)
- nom string
- adresse string


## Association

Disques(1,n) Créer (0,n)Artistes N:N

Disques(1,1) Ranger (0,n)Etagères  1:N

Disques(0,1) Empreinter (0, n)Membres 1:N

Disque(0,n) Trouver (0, n)Magasin  N:N

Disques(0,1)   représenté   (1,1)Images 1:1

0 à 1 disque est représenté par 1 image
Et 1 image peut être représenté par 1 disque