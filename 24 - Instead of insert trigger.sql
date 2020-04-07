select * from tblDepartment1
select * from tblEmployee2 

Create view vWEmployeeDetails
as
Select Id, Name, Gender, DeptName
from tblEmployee2 
join tblDepartment1
on tblEmployee2.DepartmentId = tblDepartment1.DeptId

--Now, let's try to insert a row into the view, vWEmployeeDetails, 
--by executing the following query. At this point, an error will be 
--raised stating 'View or function vWEmployeeDetails is not updatable 
--because the modification affects multiple base tables.'
--Insert into vWEmployeeDetails values(7, 'Valarie', 'Female', 'IT')

--Script to create INSTEAD OF INSERT trigger:
Create trigger tr_vWEmployeeDetails_InsteadOfInsert
on vWEmployeeDetails
Instead Of Insert
as
Begin
 Declare @DeptId int
 
 --Check if there is a valid DepartmentId
 --for the given DepartmentName
 Select @DeptId = DeptId 
 from tblDepartment1 
 join inserted
 on inserted.DeptName = tblDepartment1.DeptName
 
 --If DepartmentId is null throw an error
 --and stop processing
 if(@DeptId is null)
 Begin
  Raiserror('Invalid Department Name. Statement terminated', 16, 1)
  return
 End
 
 --Finally insert into tblEmployee table
 Insert into tblEmployee2(Id, Name, Gender, DepartmentId)
 Select Id, Name, Gender, @DeptId
 from inserted
End

--Now, let's execute the insert query:
Insert into vWEmployeeDetails values(7, 'Valarie', 'Female', 'IT')

