/*1.Create a report that shows the product name and supplier id for all products
 supplied by Exotic Liquids, Grandma Kelly's Homestead, and Tokyo Traders.
You will need to escape the apostrophe in "Grandma Kelly's Homestead." To do so,
 place another apostrophe in front of it. For example,
	SELECT *
	FROM Suppliers
	WHERE CompanyName='Grandma Kelly''s Homestead';
2.Create a report that shows all products by name that are in the Seafood category.
3.Create a report that shows all companies by name that sell products in CategoryID 8.
4.Create a report that shows all companies by name that sell products in the Seafood category.*/

SELECT ProductName, SupplierID
FROM Products
WHERE SupplierID IN(SELECT SupplierID
			FROM Suppliers
			WHERE CompanyName IN ('Grandma Kelly''s Homestead'
			, 'Exotic Liquids' , 'Tokyo Traders'));

SELECT ProductName
FROM Products
WHERE CategoryID IN (SELECT CategoryID
			FROM Categories
			WHERE CategoryName = 'Seafood');

SELECT CompanyName
FROM Suppliers
WHERE SupplierID IN (SELECT SupplierID
			FROM Products
			WHERE CategoryID = '8');

SELECT CompanyName
FROM Suppliers
WHERE SupplierID IN (SELECT SupplierID
			FROM Categories
			WHERE CategoryName = 'Seafood');

			

			

			
