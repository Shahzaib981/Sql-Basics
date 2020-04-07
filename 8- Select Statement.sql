select * from tblperson
select Distinct Name , City from tblperson

select * from tblperson where City = 'New York'

--Not equal <> or !=
select * from tblperson where City <> 'New York'

--select city name starting with N
select * from tblperson where City Like 'N%'

select * from tblperson where Age IN (21,23)
select * from tblperson where Age Between 20 AND 26

--Finding Valid Email with % means to get any lenght before or after @ 
select * from tblperson where Email Like '%@%'
select * from tblperson where Email Not Like '%@%'

--Finding Valid Email with _ means to get only one character before or after @
select * from tblperson where Email Like '_@_'

select * from tblperson where Name Like '[MST]%'
--not in list
select * from tblperson where Name Like '[^MST]%'

select * from tblperson where (City = 'London' or City = 'New York') AND Age > 20

select * from tblperson order by Name DESC, Age ASC

select top 2 * from tblperson
select top 1 percent * from tblperson

--Most Common Question find top salary
select top 1 * from tblperson order by Age Desc
