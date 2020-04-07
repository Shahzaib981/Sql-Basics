select * from tblEmployee
select * from tblDepartment

--To filter out non matching rows from left table
select		Name, Gender, Salary, DepartmentName
from		tblEmployee
Left Join	tblDepartment
ON			tblEmployee.DepartmentId = tblDepartment.ID
where		tblDepartment.ID IS NULL

--To filter out non matching rows from right table
select		Name, Gender, Salary, DepartmentName
from		tblEmployee
Right Join	tblDepartment
ON			tblEmployee.DepartmentId = tblDepartment.ID
where		tblEmployee.DepartmentID IS NULL

--To filter out non matching rows from left and right table
select		Name, Gender, Salary, DepartmentName
from		tblEmployee
Full Join	tblDepartment
ON			tblEmployee.DepartmentId = tblDepartment.ID
where		tblEmployee.DepartmentID IS NULL
OR			tblDepartment.ID Is NULL


