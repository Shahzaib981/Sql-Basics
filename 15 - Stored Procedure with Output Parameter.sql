select * from tblEmployee

Create Procedure spGetEmployeeCountByGender
@Gender nvarchar(20),
@EmployeeCount int Output
as
begin
select @EmployeeCount = COUNT(ID) from tblEmployee where Gender = @Gender
End

--Execution
Declare @TotalCount int
Execute spGetEmployeeCountByGender 'Male' , @TotalCount out
Print @TotalCount