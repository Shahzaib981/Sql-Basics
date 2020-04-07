CREATE TABLE tblEmployee1
(
  Id int Primary Key,
  Name nvarchar(30),
  Salary int,
  Gender nvarchar(10),
  DepartmentId int
)

CREATE TABLE tblDepartment1
(
 DeptId int Primary Key,
 DeptName nvarchar(20)
)

Insert into tblDepartment1 values (1,'IT')
Insert into tblDepartment1 values (2,'Payroll')
Insert into tblDepartment1 values (3,'HR')
Insert into tblDepartment1 values (4,'Admin')

Insert into tblEmployee1 values (1,'John', 5000, 'Male', 3)
Insert into tblEmployee1 values (2,'Mike', 3400, 'Male', 2)
Insert into tblEmployee1 values (3,'Pam', 6000, 'Female', 1)
Insert into tblEmployee1 values (4,'Todd', 4800, 'Male', 4)
Insert into tblEmployee1 values (5,'Sara', 3200, 'Female', 1)
Insert into tblEmployee1 values (6,'Ben', 4800, 'Male', 3)

Create View vWEmployeesByDepartment
as
Select Id, Name, Salary, Gender, DeptName
from tblEmployee1
join tblDepartment1
on tblEmployee1.DepartmentId = tblDepartment1.DeptId

SELECT * from vWEmployeesByDepartment

--View that returns only IT department employees:
Create View vWITDepartment_Employees
as
Select Id, Name, Salary, Gender, DeptName
from tblEmployee1
join tblDepartment1
on tblEmployee1.DepartmentId = tblDepartment1.DeptId
where tblDepartment1.DeptName = 'IT'