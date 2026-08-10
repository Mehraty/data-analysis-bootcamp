WITH SalesByProduct AS (
    SELECT 
        p.ProductID,
        p.Name AS ProductName,
        SUM(sod.OrderQty) AS TotalUnitsSold,
        SUM(sod.LineTotal) AS TotalSalesAmount,
        RANK() OVER (ORDER BY SUM(sod.LineTotal) DESC) AS SalesRank
    FROM SalesLT.Product p
    JOIN SalesLT.SalesOrderDetail sod ON p.ProductID = sod.ProductID
    GROUP BY p.ProductID, p.Name
)
SELECT 
    ProductID,
    ProductName,
    TotalUnitsSold,
    TotalSalesAmount,
    SalesRank
FROM SalesByProduct
WHERE SalesRank <= 10
ORDER BY SalesRank ASC;
