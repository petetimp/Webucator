/*In this exercise, you will practice using data manipulation functions.

1.Create a report that shows the units in stock, unit price, the total price value of all units
 in stock, the total price value of all units in stock rounded down, and the total price value
 of all units in stock rounded up. Sort by the total price value descending.
	SQL SERVER AND MYSQL USERS ONLY: In an earlier demo, you saw a report that returned the age
	of each employee when hired. That report was not entirely accurate as it didn't account for
	the month and day the employee was born. Fix that report, showing both the original
	(inaccurate) hire age and the actual hire age. The result will look like this.
2.Create a report that shows the first and last names and birth month (as a string) for each
 employee born in the current month.
3.Create a report that shows the contact title in all lowercase letters of each customer contact.*/

SELECT UnitsInStock, UnitPrice, UnitsInStock*UnitPrice AS TotalPrice,
 FLOOR(UnitsInStock*UnitPrice) AS TotalPriceRNDDWN,  
 CEILING(UnitsInStock*UnitPrice) AS TotalPriceRNDUP
FROM Products
ORDER BY TotalPrice DESC;

SELECT DATEDIFF(day,BirthDate,HireDate)/365.25 AS HireAgeAccurate,
	DATEDIFF(year,BirthDate,HireDate) AS HireAgeInaccurate
FROM Employees;

SELECT FirstName, LastName, DATENAME(month,BirthDate) AS BirthMonth
FROM Employees
WHERE DATEPART(month,BirthDate) = DATEPART(month,GETDATE());

SELECT LOWER(ContactTitle) AS Title
FROM Customers;
