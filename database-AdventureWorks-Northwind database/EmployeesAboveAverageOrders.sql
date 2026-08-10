SELECT (emp.FirstName+' '+ emp.LastName) as FullName,
       count(od.EmployeeID) as counted
from Employees emp
inner join Orders od on emp.EmployeeID=od.EmployeeID
group by (emp.FirstName+' '+ emp.LastName)
having count(od.EmployeeID) > (
    select avg(sub.counted)
    from (
        select count(EmployeeID) as counted
        from Orders
        group by EmployeeID
    ) as sub
)
order by counted desc

-- کارمندهایی رو نشون بده که تعداد سفارشاتشون از میانگین تعداد سفارشات همه کارمندها بیشتره.