/****** Object:  View [dbo].[Category Sales for 1997]    Committed by VersionSQL https://www.versionsql.com ******/


create view "Category Sales for 1997" AS
SELECT "Product Sales for 1997".CategoryName, Sum("Product Sales for 1997".ProductSales) AS CategorySales
FROM "Product Sales for 1997"
GROUP BY "Product Sales for 1997".CategoryName
