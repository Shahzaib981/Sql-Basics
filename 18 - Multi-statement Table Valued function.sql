--Inline Table Valued function(ILTVF):
select * from tbldate
Create Function fn_ILTVF_GetEmployees()
Returns Table
as
Return (Select Id, Name, Cast(DOB as Date) as DOB
        From tbldate)

--Multi-statement Table Valued function(MSTVF):
Create Function fn_MSTVF_GetEmployees()
Returns @Table Table (Id int, Name nvarchar(20), DOB Date)
as
Begin
 Insert into @Table
 Select Id, Name, Cast(DOB as Date)
 From tbldate
 Return
End
--Calling the Inline Table Valued Function:
Select * from fn_ILTVF_GetEmployees()

--Calling the Multi-statement Table Valued Function:
Select * from fn_MSTVF_GetEmployees()