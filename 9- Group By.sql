select * from tblperson
--Calculate total Sum os AGe
select SUM(Age) from tblperson
select max(Age) from tblperson
select min(Age) from tblperson

select * from tblperson

select City, SUM(Salary) as totalsalary
from tblperson
Group By City

select City, GenderId, SUM(Salary) as totalsalary
from tblperson
Group By City, GenderId
Order by City

--Total Number of Employees
select COUNT(*) from tblperson

--To count no. of emp in a city
select  GenderId, City, SUM(Salary) as totalsalary, Count (ID) as totalEmployees
from tblperson
Group By GenderId,City


--To Get only males

select  GenderId, City, SUM(Salary) as totalsalary, Count (ID) as totalEmployees
from tblperson
where GenderId = 'Male'
Group by GenderId , City

select  GenderId, City, SUM(Salary) as totalsalary, Count (ID) as totalEmployees
from tblperson
Group by GenderId , City
having GenderId = 'Male'