select * from tblperson
select CHARINDEX('@', 'tom34@y.com')

select SUBSTRING('tom34@y.com', CHARINDEX('@', 'tom34@y.com') + 1 ,6)

select SUBSTRING('tom34@y.com', CHARINDEX('@', 'tom34@y.com') + 1 ,
LEN('tom34@y.com') - CHARINDEX('@', 'tom34@y.com'))

Select SUBSTRING(Email, CHARINDEX('@', Email) + 1,
LEN(Email) - CHARINDEX('@', Email)) as EmailDomain,
COUNT(Email) as Total
from tblperson
Group By SUBSTRING(Email, CHARINDEX('@', Email) + 1,
LEN(Email) - CHARINDEX('@', Email))