
-- compter le nombre de pilote par compagnie
SELECT 
COUNT(compagny) as num, compagny
FROM `pilots` 
GROUP BY compagny;

-- effectuer un calcul sur les groupement

SELECT 
COUNT(compagny) as num, compagny
FROM `pilots` 
GROUP BY compagny
HAVING COUNT(compagny) > 2;

-- effectuer un calcul sur les groupement avec un alias

SELECT 
COUNT(compagny) as num, compagny
FROM `pilots` 
GROUP BY compagny
HAVING COUNT(compagny) > 2