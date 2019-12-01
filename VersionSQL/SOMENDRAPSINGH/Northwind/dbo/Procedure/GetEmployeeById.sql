/****** Object:  Procedure [dbo].[GetEmployeeById]    Committed by VersionSQL https://www.versionsql.com ******/

/**********************************
	* Name : Somendra Pratap Singh
	* Date : 30-11-2019
***********************************/
Create Procedure GetEmployeeById
(
	@EmployeeId int
)
AS
Begin
	Select * from Employees Where EmployeeID =@EmployeeId;
End

