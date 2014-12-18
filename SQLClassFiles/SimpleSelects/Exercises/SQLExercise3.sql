/*In this exercise, you will practice sorting results in SELECT statements.

1.Select CategoryName and Description from the Categories table sorted by CategoryName.
2.Select ContactName, CompanyName, ContactTitle, and Phone from the Customers table sorted by
Phone.
3.Create a report showing employees' first and last names and hire dates sorted from newest to
 oldest employee.
4.Create a report showing Northwind's orders sorted by Freight from most expensive to cheapest.
 Show OrderID, OrderDate, ShippedDate, CustomerID, and Freight.
5.Select CompanyName, Fax, Phone, HomePage and Country from the Suppliers table sorted by Country
in descending order and then by CompanyName in ascending order.
6.Create a list of employees showing title, first name, and last name. Sort by Title in ascending
 order and then by LastName in descending order.*/
 
 SELECT CategoryName, Description FROM Categories ORDER BY CategoryName;
 SELECT ContactName, CompanyName, ContactTitle, Phone FROM Customers ORDER BY Phone;
 SELECT FirstName, LastName, HireDate FROM Employees ORDER BY HireDate DESC;
 SELECT OrderID, OrderDate, ShippedDate, CustomerID, Freight FROM Orders ORDER BY Freight DESC;
 SELECT CompanyName, Fax, Phone, HomePage, Country FROM Suppliers ORDER BY Country DESC, CompanyName ASC;
 SELECT Title, FirstName, LastName FROM Employees ORDER BY Title ASC, LastName DESC;