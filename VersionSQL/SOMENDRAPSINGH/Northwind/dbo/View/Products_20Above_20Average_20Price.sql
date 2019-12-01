/****** Object:  View [dbo].[Products Above Average Price]    Committed by VersionSQL https://www.versionsql.com ******/


create view "Products Above Average Price" AS
SELECT Products.ProductName, Products.UnitPrice
FROM Products
WHERE Products.UnitPrice>(SELECT AVG(UnitPrice) From Products)
--ORDER BY Products.UnitPrice DESC
