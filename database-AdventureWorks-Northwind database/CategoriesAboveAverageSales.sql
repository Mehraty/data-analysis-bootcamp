select ctg.CategoryName,
       COUNT(DISTINCT pro.ProductID) as [تعداد محصولات],
       AVG(sub2.counted) as [میانگین فروش]
from Categories ctg
inner join Products pro on ctg.CategoryID = pro.CategoryID
inner join (
    select ProductID, COUNT(DISTINCT OrderID) as counted
    from [Order Details]
    group by ProductID
) as sub2 on pro.ProductID = sub2.ProductID
group by ctg.CategoryName
having AVG(sub2.counted) > (
    select avg(sub.counted)
    from (
        select COUNT(DISTINCT OrderID) as counted
        from [Order Details]
        group by ProductID
    ) as sub
)
order by [میانگین فروش] desc
