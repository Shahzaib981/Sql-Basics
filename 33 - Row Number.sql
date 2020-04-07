--Row Number Function

Select *, ROW_NUMBER() OVER (PARTITION BY ID Order by ID)
as RowNumber
from Customers


With CustomerDuplicateCTE
as
( Select *, ROW_NUMBER() OVER (PARTITION BY ID Order by ID)
as RowNumber
from Customers)
Delete From CustomerDuplicateCTE where RowNumber>1