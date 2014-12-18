/*
In this exercise, you will practice writing SELECT statements that filter records based
 on multiple conditions.

1.Create a report that shows the first and last names and cities of employees from cities
 other than Seattle in the state of Washington.
2.Create a report that shows the company name, contact title, city and country of all
 customers in Mexico or in any city in Spain except Madrid.
 */

SELECT FirstName, LastName, City
FROM Employees
WHERE Region = 'WA' AND City <> 'Seattle';

SELECT CompanyName, ContactTitle, City, Country
FROM Customers
WHERE Country = 'Mexico' OR (Country = 'Spain' AND City <> 'Madrid'); 

