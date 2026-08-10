select ProductName, UnitPrice
from Products
where UnitPrice >
(select avg(UnitPrice)
from Products)
order by UnitPrice desc