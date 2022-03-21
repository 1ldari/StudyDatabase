-- Показать бонус (Bonus) и поля FirstName, LastName из таблиц Person.Person, Sales. SalesPerson.

use AdventureWorks2019

select a.FirstName, a.LastName, b.Bonus
from Person.Person a, Sales.SalesPerson b
where a.BusinessEntityID = b.BusinessEntityID