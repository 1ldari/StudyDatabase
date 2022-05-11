-- Показать список языков (поле Name), в котором указано, есть ли описание товаров на данном языке или нет, из таблиц Production.Culture, Production.ProductModelProductDescriptionCulture, используя LEFT OUTER JOIN.

use AdventureWorks2019

select a.Name, b.ProductModelID, b.ProductDescriptionID
from Production.Culture a LEFT OUTER JOIN Production.ProductModelProductDescriptionCulture b
on a.CultureID = b.CultureID