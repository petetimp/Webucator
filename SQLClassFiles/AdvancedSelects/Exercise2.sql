SELECT ProductID, SUM(Quantity) AS TotalUnits
FROM [Order Details]
GROUP BY ProductID
HAVING SUM(Quantity) < 200;

SELECT ProductID, AVG(UnitPrice) AS AveragePrice
FROM [Order Details]
GROUP BY ProductID
HAVING AVG(UnitPrice) > 70
ORDER BY AveragePrice;

SELECT CustomerID, COUNT(OrderID) AS NumOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 15
ORDER BY NumOrders DESC;
  
/*CHALLENGE ANSWER:*/
SELECT ProductID, UnitPrice
FROM Products
WHERE UnitPrice > 70
ORDER BY UnitPrice;

