/******************************
SQL Server Solutions
******************************/
SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity * (1-Discount) AS TotalPrice
FROM "Order Details";
 
SELECT FirstName + ' ' + LastName + ' can be reached at x' + Extension + '.' AS ContactInfo
FROM Employees;
 
/******************************
Oracle Solutions
******************************
SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity * (1-Discount) AS TotalPrice
FROM Order_Details;
 
SELECT FirstName || ' ' || LastName || ' can be reached at x' || Extension || '.' AS ContactInfo
FROM Employees;
 
******************************
MySQL Solutions
******************************
SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity * (1-Discount) AS TotalPrice
FROM Order_Details;
 
SELECT CONCAT(FirstName, ' ', LastName, ' can be reached at x', Extension, '.') AS ContactInfo
FROM Employees;*/