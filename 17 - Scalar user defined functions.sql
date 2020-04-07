CREATE FUNCTION Age(@DOB Date)  
RETURNS INT  
AS  
BEGIN  
 DECLARE @Age INT  
 SET @Age = DATEDIFF(YEAR, @DOB, GETDATE()) - 
 CASE WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR (MONTH(@DOB) = MONTH(GETDATE()) 
 AND DAY(@DOB) > DAY(GETDATE())) 
 THEN 1 ELSE 0 END  
 RETURN @Age  
 END
 --Execution
 select dbo.Age('10/08/1982') as Age

 select * from tbldate
 select Id, Name , dbo.Age(DOB) as Age from tbldate
 where dbo.Age(DOB)>30

 --Stored pROCEDURE

 CREATE Proc spAge
 @DOB Date    
AS  
BEGIN  
 DECLARE @Age INT  
 SET @Age = DATEDIFF(YEAR, @DOB, GETDATE()) - 
 CASE WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR (MONTH(@DOB) = MONTH(GETDATE()) 
 AND DAY(@DOB) > DAY(GETDATE())) 
 THEN 1 ELSE 0 END  
 Select @Age  
 END

 Execute spAge '10/08/1982'