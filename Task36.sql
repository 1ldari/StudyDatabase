-- 6.	Показать подкатегории продуктов (ProductSubcategoryID из таблицы Production.Product), которые имеют несколько цветов, содержащих в названии букву “e”, используя SELF JOIN.

use AdventureWorks2019

select ProductSubcategoryID, count(Color) 
from Production.Product
where color like '%e%'
group by ProductSubcategoryID