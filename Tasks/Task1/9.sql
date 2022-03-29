--9.	Показать ID электронной почты (EmailAddressID) и саму электронную почту (EmailAddress) из таблицы
--Person.EmailAddress. Все электронные почты расположить в обратном алфавитном порядке
SELECT EmailAddressID, EmailAddress FROM Person.EmailAddress
ORDER BY EmailAddress DESC