select c.CompanyName, o.OrderDate, o.OrderID
from Customers c 
right join Orders o on c.CustomerID =o.CustomerID