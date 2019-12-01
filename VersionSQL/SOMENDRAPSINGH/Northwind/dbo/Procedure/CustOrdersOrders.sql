/****** Object:  Procedure [dbo].[CustOrdersOrders]    Committed by VersionSQL https://www.versionsql.com ******/


CREATE PROCEDURE CustOrdersOrders @CustomerID nchar(5)
AS
SELECT OrderID, 
	OrderDate,
	RequiredDate,
	ShippedDate
FROM Orders
WHERE CustomerID = @CustomerID
ORDER BY OrderID
