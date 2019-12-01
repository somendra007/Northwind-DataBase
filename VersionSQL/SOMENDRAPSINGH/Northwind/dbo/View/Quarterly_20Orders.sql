/****** Object:  View [dbo].[Quarterly Orders]    Committed by VersionSQL https://www.versionsql.com ******/


create view "Quarterly Orders" AS
SELECT DISTINCT Customers.CustomerID, Customers.CompanyName, Customers.City, Customers.Country
FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
