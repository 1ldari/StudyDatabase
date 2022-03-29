-- 6.	Показать подкатегории продуктов (ProductSubcategoryID из таблицы Production.Product), которые имеют несколько цветов, содержащих в названии букву “e”, используя SELF JOIN.

use AdventureWorks2019
select DISTINCT V1.* 
from Production.Product AS V1 
INNER JOIN Production.Product AS V2
ON V1.ProductSubcategoryID = V2.ProductSubcategoryID
where V1.Color <> V2.Color
SELECT count(Color) from Production.Product
where color LIKE  '%e%' 
group by ProductSubcategoryID 
