--6.	Из таблицы Sales.CreditCard показать тип кредитной карты (CardType), номер кредитной карты (CardNumber),
--месяц и год, до которого действует кредитная карта (ExpMonth и ExpYear). Показать только те кредитные
--карты, крайний месяц эксплуатации которых или апрель, или июнь, или август, или октябрь 
--(месяцы указаны цифрами). Использовать оператор IN
SELECT CardType, CardNumber, ExpMonth, ExpYear FROM Sales.CreditCard
WHERE ExpMonth IN (4, 6, 8, 10)