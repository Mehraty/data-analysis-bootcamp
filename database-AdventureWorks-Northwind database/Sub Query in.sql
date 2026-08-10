select CustomerID, CompanyName
from Customers
where CustomerID in (select distinct CustomerID
from Orders)
