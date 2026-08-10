select pro.ProductName ,COUNT(DISTINCT ord.OrderID) as counted
from [Order Details] ord
inner join Products pro  on ord.ProductID= pro.ProductID
group by pro.ProductName
having COUNT(DISTINCT ord.OrderID)>(
		select avg(sub.counted)
		from (
			select COUNT(DISTINCT od.OrderID) as counted
			from [Order Details] od
			group by ProductID)
		as sub)
order by counted