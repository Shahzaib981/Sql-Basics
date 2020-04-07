--Create Table tblGender
--(
--ID int NOT NULL Primary Key,
--Gender nvarchar(50) NOT NULL
--)

Alter Table tblperson add constraint tblperson_GenderId_FK
Foreign Key (GenderID) references tblGender(ID)