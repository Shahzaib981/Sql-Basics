Create Trigger tr_vWEmployeeDetails_InsteadOfUpdate
on vWEmployeeDetails
instead of update
as
Begin
 -- if EmployeeId is updated
 if(Update(Id))
 Begin
  Raiserror('Id cannot be changed', 16, 1)
  Return
 End
 
 -- If DeptName is updated
 if(Update(DeptName)) 
 Begin
  Declare @DeptId int

  Select @DeptId = DeptId
  from tblDepartment1
  join inserted
  on inserted.DeptName = tblDepartment1.DeptName
  
  if(@DeptId is NULL )
  Begin
   Raiserror('Invalid Department Name', 16, 1)
   Return
  End
  
  Update tblEmployee2 set DepartmentId = @DeptId
  from inserted
  join tblEmployee
  on tblEmployee2.Id = inserted.id
 End
 
 -- If gender is updated
 if(Update(Gender))
 Begin
  Update tblEmployee2 set Gender = inserted.Gender
  from inserted
  join tblEmployee2
  on tblEmployee2.Id = inserted.id
 End
 
 -- If Name is updated
 if(Update(Name))
 Begin
  Update tblEmployee2 set Name = inserted.Name
  from inserted
  join tblEmployee2
  on tblEmployee2.Id = inserted.id
 End
End
