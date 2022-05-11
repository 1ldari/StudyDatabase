--2.	Определить количество сотрудников и город, в котором проживает максимальное число сотрудников (Таблица Person.[Address])
use AdventureWorks2019

select top(1) city, cnt from(
select City, count(*) as cnt 
from Person.Address 
group by City) A
order by cnt desc