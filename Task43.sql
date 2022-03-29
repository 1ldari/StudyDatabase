--3.	Показать категорию (ProductSubcategoryID) товаров, для которой существует более 7 размеров (Таблица Production.Product). Показать поля [Name], Size и ProductSubcategoryID.
SELECT COUNT(DISTINCT p2.Size) AS SizeCount 
,p2.ProductSubcategoryID 
FROM Production.Product AS p2 
WHERE p2.ProductSubcategoryID IS NOT NULL 
AND p2.Size IS NOT NULL 
GROUP BY p2.ProductSubcategoryID 
HAVING COUNT(DISTINCT p2.Size) > 7;
SELECT p1.[Name] 
,p1.ProductSubcategoryID
,p1.Size FROM Production.Product AS p1
WHERE p1.ProductSubcategoryID IS NOT NULL 
AND p1.Size IS NOT NULL 
AND ( SELECT COUNT(DISTINCT p2.Size) AS SizeCount 
FROM Production.Product AS p2 
WHERE p1.ProductSubcategoryID = p2.ProductSubcategoryID
AND p2.Size IS NOT NULL 
) > 7;
