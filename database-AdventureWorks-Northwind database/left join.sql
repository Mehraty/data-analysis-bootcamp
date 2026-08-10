select c.CompanyName , max(o.orderdate) as lastorder
from Customers c 
left join Orders o on o.CustomerID=c.CustomerID
group by c.CompanyName