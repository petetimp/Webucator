/*
1.Create a report that shows the employee id, order id, customer id, required date, and shipped
 date of all orders that were shipped later than they were required.
2.Create a report that shows the city, company name, and contact name of all customers who are in
 cities that begin with "A" or "B."
3.Create a report that shows all orders that have a freight cost of more than $500.00.
4.Create a report that shows the product name, units in stock, units on order, and reorder level
 of all products that are up for reorder.
*/

SELECT EmployeeID, CustomerID, OrderID, RequiredDate, ShippedDate
FROM Orders
WHERE RequiredDate < ShippedDate;

SELECT City, CompanyName, ContactName
FROM Customers
WHERE City < 'C';

SELECT OrderId, Freight
FROM Orders
WHERE Freight > '500';

SELECT ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
FROM Products
WHERE UnitsInStock <= ReorderLevel;


