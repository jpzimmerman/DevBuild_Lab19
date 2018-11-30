/*  1. */  SELECT * FROM Northwind.dbo.Customers; 
/*  2. */ SELECT DISTINCT Country FROM Northwind.dbo.Customers;
/*  3. */ SELECT * FROM Northwind.dbo.Customers WHERE CustomerID LIKE 'BL%';
/*  4. */ SELECT TOP 100 * FROM Northwind.dbo.Customers; 
/*  5. */ SELECT * FROM Northwind.dbo.Customers WHERE PostalCode IN ('1010','3012','12209','05023');
/*  6. */ SELECT * FROM Northwind.dbo.Orders WHERE ShipRegion IS NOT NULL; 
/*  7. */ SELECT * FROM Northwind.dbo.Customers ORDER BY Country, City; 
/*  8. */ INSERT INTO Northwind.dbo.Customers(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
			VALUES(101, 'Wolfpack Inc', 'Anthony Blocton', 'Boss', '1001 Woodward Avenue', 'Detroit', 'MI', '48226', 'USA', '(800)591-6322', '(877)618-1894'); 
/*  9. */	UPDATE Northwind.dbo.Orders
			SET ShipRegion = 'EuroZone'
			WHERE ShipCountry = 'France'; 
/* 10. */ DELETE FROM Northwind.dbo.[Order Details] WHERE Quantity = 1;  
/* 11. */	SELECT AVG(Quantity), MAX(Quantity), MIN(Quantity) FROM Northwind.dbo.[Order Details]; 
/* 12. */	SELECT AVG(Quantity), MAX(Quantity), MIN(Quantity) FROM Northwind.dbo.[Order Details] GROUP BY OrderID;
/* 13. */ SELECT CustomerID from Northwind.dbo.Orders WHERE OrderID = 10290;  
/* 14. */	SELECT Northwind.dbo.Customers.CustomerID, CompanyName, Northwind.dbo.Orders.OrderID from Northwind.dbo.Customers
			INNER JOIN Northwind.dbo.Orders ON Northwind.dbo.Customers.CustomerID = Northwind.dbo.Orders.CustomerID;

			SELECT Northwind.dbo.Customers.CustomerID, CompanyName, Northwind.dbo.Orders.OrderID from Northwind.dbo.Customers
			LEFT JOIN Northwind.dbo.Orders ON Northwind.dbo.Customers.CustomerID = Northwind.dbo.Orders.CustomerID;

			SELECT OrderID, CompanyName, Northwind.dbo.Customers.CustomerID from Northwind.dbo.Orders
			RIGHT JOIN Northwind.dbo.Customers ON Northwind.dbo.Orders.CustomerID = Northwind.dbo.Customers.CustomerID;

/* 15. */ SELECT FirstName FROM Northwind.dbo.Employees WHERE ReportsTo IS NULL;

/* 16. */	DECLARE @AndrewId int;
			/* This clumsy line of code is a little like that portion of the Comcast bylaws that says Brian Roberts is CEO for life, but we'll roll with it */
			SELECT @AndrewId = k.EmployeeID FROM Northwind.dbo.Employees k WHERE FirstName = 'Andrew' AND LastName = 'Fuller';
			PRINT @AndrewId;
			SELECT * FROM Northwind.dbo.Employees WHERE ReportsTo = @AndrewId;
  