/****** Object:  Procedure [dbo].[Ten Most Expensive Products]    Committed by VersionSQL https://www.versionsql.com ******/


create procedure "Ten Most Expensive Products" AS
SET ROWCOUNT 10
SELECT Products.ProductName AS TenMostExpensiveProducts, Products.UnitPrice
FROM Products
ORDER BY Products.UnitPrice DESC
