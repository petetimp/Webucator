
/*
1.Create a report showing all the company names and contact names of Northwind's customers in
 Buenos Aires.
2.Create a report showing the product name, unit price and quantity per unit of all products that
 are out of stock.
3.Create a report showing the order date, shipped date, customer id, and freight of all orders placed
 on May 19, 1997.
	-Oracle users will have to use following date format: 'dd-mmm-yyyy' (e.g, '19-May-1997').
	-MySQL users will have to use following date format: 'yyyy-mm-dd' (e.g, '1997-05-19').
4.Create a report showing the first name, last name, and country of all employees not in the United
 States.*/
 
 SELECT CompanyName, ContactName
 FROM Customers
 WHERE City = 'Buenos Aires';
 
 SELECT ProductName, UnitPrice, QuantityPerUnit
 FROM Products
 WHERE UnitsInStock = 0;
 
 SELECT OrderDate, ShippedDate, CustomerID, Freight
 FROM Orders
 WHERE OrderDate = '1997-05-19';
 
 SELECT FirstName, LastName, Country
 FROM Employees
 WHERE Country <> 'USA';
 
