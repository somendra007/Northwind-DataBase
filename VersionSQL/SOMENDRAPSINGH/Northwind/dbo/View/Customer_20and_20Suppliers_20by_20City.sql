/****** Object:  View [dbo].[Customer and Suppliers by City]    Committed by VersionSQL https://www.versionsql.com ******/


create view "Customer and Suppliers by City" AS
SELECT City, CompanyName, ContactName, 'Customers' AS Relationship 
FROM Customers
UNION SELECT City, CompanyName, ContactName, 'Suppliers'
FROM Suppliers
--ORDER BY City, CompanyName
