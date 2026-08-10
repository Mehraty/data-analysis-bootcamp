select  emp.EmployeeID,ord.OrderID ,(FirstName+' '+ LastName) as fullname,HireDate, od.Quantity, pro.ProductName,od.UnitPrice,
sum(od.Quantity*od.UnitPrice) as sumunit
from Orders ord inner join 
Employees emp on ord.EmployeeID=emp.EmployeeID
inner join [Order Details] od on od.OrderID=ord.OrderID
inner join Products pro on pro.ProductID=od.ProductID
where ord.OrderID=10248
group by emp.EmployeeID,ord.OrderID ,(FirstName+' '+ LastName),HireDate, od.Quantity, pro.ProductName,od.UnitPrice
order by pro.ProductName