SELECT e.FirstName, e.LastName, c.CompanyName,
				DATE_FORMAT(o.OrderDate, '%M %e, %Y') AS OrderDate
			FROM Employees e
				JOIN Orders o ON (e.EmployeeID = o.EmployeeID)
				JOIN Customers c ON (c.CustomerID = o.CustomerID)
				ORDER BY o.OrderDate
				LIMIT 0,10;