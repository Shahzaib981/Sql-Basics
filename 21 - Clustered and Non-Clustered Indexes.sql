CREATE TABLE [tblEmployeee]
(
 [Id] int Primary Key,
 [Name] nvarchar(50),
 [Salary] int,
 [Gender] nvarchar(10),
 [City] nvarchar(50)
)

--Note that Id column is marked as primary key. Primary key, constraint create 
--clustered indexes automatically if no clustered index already exists on the 
--table and a nonclustered index is not specified when you create the PRIMARY KEY constraint.

--Note that, the values for Id column are not in a sequential order.
Insert into tblEmployeee Values(3,'John',4500,'Male','New York')
Insert into tblEmployeee Values(1,'Sam',2500,'Male','London')
Insert into tblEmployeee Values(4,'Sara',5500,'Female','Tokyo')
Insert into tblEmployeee Values(5,'Todd',3100,'Male','Toronto')
Insert into tblEmployeee Values(2,'Pam',6500,'Female','Sydney')

--Inspite, of inserting the rows in a random order, when we execute
--the select query we can see that all the rows in the table are arranged in 
--an ascending order based on the Id column. This is because a clustered index determines 
--the physical order of data in a table, and we have got a clustered index on the Id column.

Create Clustered Index IX_tblEmployeee_Gender_Salary
ON tblEmployeee(Gender DESC, Salary ASC)

Create NonClustered Index IX_tblEmployee_Name
ON tblEmployee(Name)