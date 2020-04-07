create table test1
(
ID int identity (1,1),
value nvarchar(20)
)

create table test2
(
ID int identity (1,1),
value nvarchar(20)
)

Insert into test1 values ('X')
select * from test1
select * from test2



Create Trigger trForInsert on Test1 for Insert
as
Begin
     Insert into test2 values ('yyy')
End

--user1
insert into test2 values ('zzzz')
select SCOPE_IDENTITY()
select @@IDENTITY
select IDENT_CURRENT('test2')
