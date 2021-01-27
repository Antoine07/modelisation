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

Disques  Créer  Artistes
*Un disque est créé par 1 Artiste.*

Disques(1,1) Ranger (0,n)Etagères
*Un disque est rangé sur 1 Etagère.*

Disques(1,1) Empreinter (0, n)Membres
*Un disque est empreinté par 1 Membre.*
