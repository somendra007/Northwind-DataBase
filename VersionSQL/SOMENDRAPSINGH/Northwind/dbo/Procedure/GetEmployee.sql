/****** Object:  Procedure [dbo].[GetEmployee]    Committed by VersionSQL https://www.versionsql.com ******/

/*********************************************
	* Name : Somendra Pratap Singh
	* Date : 25-11-2019
	* Exec : GetEmployee
*********************************************/
CREATE Procedure GetEmployee
AS
BEGIN
	Select EmployeeID,ISNULL(ISNULL(FirstName,'') + '' +ISNULL(LastName,''),'No Name') [Name],City from Employees;
END

