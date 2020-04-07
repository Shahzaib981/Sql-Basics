select * from tblEmployee

Create Proc spGetEmployeeByGenderANdDepartment
@Gender nvarchar(20),
@DepartmentId int
as
begin
select Name, Gender, DepartmentId from tblEmployee where Gender = @Gender 
And DepartmentId = @DepartmentId
End

--Execute Stored procedure
spGetEmployeeByGenderANdDepartment 'Male', 1

