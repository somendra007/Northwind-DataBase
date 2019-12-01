/****** Object:  View [dbo].[Summary of Sales by Quarter]    Committed by VersionSQL https://www.versionsql.com ******/


create view "Summary of Sales by Quarter" AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
