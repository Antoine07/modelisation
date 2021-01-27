-- Sélectionnez tous les pilotes de la compagnie AUS

SELECT * FROM pilots WHERE compagny = 'AUS';

-- Sélectionnez les noms des pilotes de la compagnie FRE1 ayant fait plus de 15 heures de vols.

SELECT name FROM pilots WHERE compagny = 'FRE1' AND numFlying > 15;

-- Sélectionnez les noms des pilotes de la compagnie FRE1 ayant fait plus de 20 heures de vols.

SELECT name FROM pilots WHERE compagny = 'FRE1' AND numFlying > 20;

-- Sélectionnez les noms des pilotes de la compagnie FRE1 ou AUST ayant fait plus de 20 de vols.

SELECT name FROM pilots WHERE ( compagny = 'FRE1' OR compagny = 'AUST' ) AND numFlying > 20;


-- Sélectionnez les noms des pilotes ayant fait entre 190 et 200 heures de vols.

SELECT name FROM pilots WHERE  numFlying >= 190 AND numFlying <= 200;

-- Sélectionnez les noms des pilotes qui sont nés avant 1978.

SELECT name FROM pilots WHERE  birth_date < '1978';

-- né en 1978
SELECT name FROM pilots WHERE  birth_date > '1978' AND  birth_date < '1979';

-- Quels sont les pilotes qui ont un vol programmé après 2020-05-08 ?

SELECT name FROM pilots WHERE  next_flight > '2020-05-08';

-- Sélectionnez tous les des pilotes dont le nom de compagnie contient un A. Utilisez un LIKE et cherchez sur le site sql.sh

SELECT name, compagny FROM pilots WHERE  compagny LIKE '%a%';

-- Sélectionnez tous les pilotes dont le nom de la compagnie commence par un F.

SELECT name, compagny FROM pilots WHERE  compagny LIKE '%f';


-- Sélectionnez tous les pilotes dont le nom de la compagnie contient un I suivi d'un caractère.

SELECT name, compagny FROM pilots WHERE  compagny LIKE '%I_';

/*
Exercice supplémentaire avec une Regex ceci permet d'extraire des sous-chaînes
Tous les pilotes dont le nom de la compagnie se termine par I suivi de 1 caractères exactement
*/

SELECT * FROM 
pilots WHERE 
-- . désigne n'importe quel caractère * en nombre quelconque {1} deux exactement
-- ^ et $ respectivement commence et se termine
compagny REGEXP '^.*I.{1}$';

/*
Faites une requête permettant de sélectionner le pilote ayant eu le meilleur bonus.
*/

SELECT name
FROM pilots
WHERE bonus = (SELECT max(bonus) FROM pilots);