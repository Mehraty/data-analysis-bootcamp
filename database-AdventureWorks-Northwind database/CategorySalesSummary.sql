SELECT 
    ctg.CategoryName,
    COUNT(DISTINCT pro.ProductID) AS counted,
    SUM(orde.Quantity * orde.UnitPrice) AS sumsales
FROM Categories ctg
INNER JOIN Products pro ON ctg.CategoryID = pro.CategoryID
INNER JOIN [Order Details] orde ON pro.ProductID = orde.ProductID
GROUP BY ctg.CategoryName
HAVING COUNT(DISTINCT pro.ProductID) >= 5
ORDER BY sumsales DESC;
