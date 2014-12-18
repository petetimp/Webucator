/*
In this exercise, you will practice writing SELECT statements that use WHERE with word operators.

1.Create a report that shows the first and last names and birth date of all employees born in the
 1950s.
2.Create a report that shows the product name and supplier id for all products supplied by Exotic
 Liquids, Grandma Kelly's Homestead, and Tokyo Traders. Hint: you will need to first do a separate
 SELECT on the Suppliers table to find the supplier ids of these three companies.
3.Create a report that shows the shipping postal code, order id, and order date for all orders with
 a ship postal code beginning with "02389".
4.Create a report that shows the contact name and title and the company name for all customers whose
 contact title does not contain the word "Sales".
*/

SELECT FirstName, LastName, BirthDate
FROM Employees
WHERE BirthDate BETWEEN '1950-01-01' AND '1959-12-31 23:59:59';
/*
SELECT CompanyName, SupplierID
FROM Suppliers
WHERE SupplierID = 2 OR SupplierID = 3 OR SupplierID = 4;
*/
SELECT SupplierID, ProductName
FROM Products
WHERE SupplierID = 2 OR SupplierID = 3 OR SupplierID = 4;

SELECT ShipPostalCode, OrderID, OrderDate
FROM Orders
WHERE ShipPostalCode LIKE '02389%';

SELECT ContactName, ContactTitle, CompanyName
FROM Customers
WHERE NOT ContactTitle LIKe ('%Sales%');