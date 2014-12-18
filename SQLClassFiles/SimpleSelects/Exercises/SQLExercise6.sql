/*
1.Create a report that shows the company name, contact name and fax number of all customers
 that have a fax number.
2.Create a report that shows the first and last name of all employees who do not report to anybody.
*/
SELECT CompanyName, ContactName, Fax
FROM Customers
WHERE Fax IS NOT NULL;

SELECT FirstName, LastName
FROM Employees
WHERE ReportsTo IS NULL;