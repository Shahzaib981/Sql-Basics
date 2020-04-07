Select * from tblemp

select			E.Name as Employee, ISNULL(M.Name, 'NO Manager') as Manager
from			tblemp E
Left Join		tblemp M
On				E.ManagerID = M.EmployeeID

select			E.Name as Employee, COALESCE(M.Name, 'NO Manager') as Manager
from			tblemp E
Left Join		tblemp M
On				E.ManagerID = M.EmployeeID

select			E.Name as Employee, Case when M.Name is null THEN 'No Manager'  
                Else M.Name END as Manager
from			tblemp E
Left Join		tblemp M
On				E.ManagerID = M.EmployeeID