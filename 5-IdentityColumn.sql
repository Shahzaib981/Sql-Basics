Select * from Table_1
insert into Table_1 values ('John')
insert into Table_1 values ('Tom')
insert into Table_1 values ('Sara')

Delete from Table_1 where ID = 1
--Now a gap is present in ID in order to fill it use this command 
Set identity_insert Table_1 ON
insert into Table_1 (ID,Name) values (1,'John')
--After Filling turn if OFF
Set identity_insert Table_1 OFF