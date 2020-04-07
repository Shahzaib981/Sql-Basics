--Local Temporary Table

Create Table #PersonDetails(Id int, Name nvarchar(20))

Insert into #PersonDetails Values(1, 'Mike')
Insert into #PersonDetails Values(2, 'John')
Insert into #PersonDetails Values(3, 'Todd')

Select * from #PersonDetails

--Global Temporary Table
Create Table ##EmployeeDetails(Id int, Name nvarchar(20))