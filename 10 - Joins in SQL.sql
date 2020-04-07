Create table tblDepartment
(
     ID int primary key,
     DepartmentName nvarchar(50),
     Location nvarchar(50),
     DepartmentHead nvarchar(50)
)
Go

Insert into tblDepartment values (1, 'IT', 'London', 'Rick')
Insert into tblDepartment values (2, 'Payroll', 'Delhi', 'Ron')
Insert into tblDepartment values (3, 'HR', 'New York', 'Christie')
Insert into tblDepartment values (4, 'Other Department', 'Sydney', 'Cindrella')
Go

Create table tblEmployee
(
     ID int primary key,
     Name nvarchar(50),
     Gender nvarchar(50),
     Salary int,
     DepartmentId int foreign key references tblDepartment(Id)
)
Go

Insert into tblEmployee values (1, 'Tom', 'Male', 4000, 1)
Insert into tblEmployee values (2, 'Pam', 'Female', 3000, 3)
Insert into tblEmployee values (3, 'John', 'Male', 3500, 1)
Insert into tblEmployee values (4, 'Sam', 'Male', 4500, 2)
Insert into tblEmployee values (5, 'Todd', 'Male', 2800, 2)
Insert into tblEmployee values (6, 'Ben', 'Male', 7000, 1)
Insert into tblEmployee values (7, 'Sara', 'Female', 4800, 3)
Insert into tblEmployee values (8, 'Valarie', 'Female', 5500, 1)
Insert into tblEmployee values (9, 'James', 'Male', 6500, NULL)
Insert into tblEmployee values (10, 'Russell', 'Male', 8800, NULL)
Go

select * from tblEmployee
select * from tblDepartment

--Inner Join
select Name, Gender, Salary, DepartmentName
from tblEmployee
Inner Join tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.ID

--Left Outer Join
select Name, Gender, Salary, DepartmentName
from tblEmployee
Left Outer Join tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.ID

--Right Outer Join
select Name, Gender, Salary, DepartmentName
from tblEmployee
Right Outer Join tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.ID

--Full Outer Join
select Name, Gender, Salary, DepartmentName
from tblEmployee
Full Outer Join tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.ID

--Cross Join
select Name, Gender, Salary, DepartmentName
from tblEmployee
Cross Join tblDepartment

--General Formula for Joins
--SELECT         ColumnList
--FROM           LeftTableName
--JOIN_TYPE      RightTableName
--ON             JoinCondition