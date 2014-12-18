/*1.Create a report that shows the order ids and the associated employee names
for orders that shipped after the required date. It should return the following.
There should be 37 rows returned.*/
SELECT e.FirstName, e.LastName, o.OrderID
FROM Employees e JOIN Orders o ON
    (e.EmployeeID = o.EmployeeID)
WHERE o.RequiredDate < o.ShippedDate
ORDER BY e.LastName, e.FirstName;
/*2.Create a report that shows the total quantity of products (from the Order_Details table)
 ordered. Only show records for products for which the quantity ordered is fewer than 200.
 The report should return the following 5 rows.*/
SELECT SUM(Quantity) AS TotalUnits
FROM [Order Details] od
	JOIN Products p ON (od.ProductID = p.ProductID)
GROUP BY od.ProductID
HAVING SUM(Quantity) < 200;
/*3.Create a report that shows the total number of orders by Customer since December 31, 1996.
 The report should only return rows for which the NumOrders is greater than 15. The report
 should return the following 5 rows.*/
SELECT c.CompanyName, COUNT(o.OrderID) AS NumOrders
FROM Customers c JOIN Orders o ON
    (c.CustomerID = o.CustomerID)
WHERE OrderDate > '1996-12-31'
GROUP BY c.CompanyName
HAVING COUNT(o.OrderID) > 15
ORDER BY NumOrders DESC;
/*4.Create a report that shows the company name, order id, and total price of all products
 of which Northwind has sold more than $10,000 worth. There is no need for a GROUP BY
 clause in this report.*/
SELECT c.CompanyName, o.OrderID,
    od.UnitPrice * od.Quantity * (1-od.Discount) AS TotalPrice
FROM [Order Details] od
    JOIN Orders o ON (o.OrderID = od.OrderID)
    JOIN Customers c ON (c.CustomerID = o.CustomerID)
WHERE od.UnitPrice * od.Quantity * (1-od.Discount) > 10000
ORDER BY TotalPrice DESC;

