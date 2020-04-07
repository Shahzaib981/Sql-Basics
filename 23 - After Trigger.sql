select * from tblEmployee1
CREATE TABLE tblEmployeeAudit
(
  Id int identity(1,1) primary key,
  AuditData nvarchar(1000)
)

CREATE TRIGGER tr_tblEMployee_ForInsert
ON tblEmployee1
FOR INSERT
AS
BEGIN
 Declare @Id int
 Select @Id = Id from inserted
 
 insert into tblEmployeeAudit 
 values('New employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is added at ' + cast(Getdate() as nvarchar(20)))
END

Insert into tblEmployee1 values (7,'Tan', 2300, 'Female', 3)

select * from tblEmployee1
select * from tblEmployeeAudit
