SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS FullName,
    c.CompanyName,
    COUNT(soh.SalesOrderID) AS NumberOfOrders,
    ROUND(SUM(soh.TotalDue), 2) AS TotalPurchases,
    ROUND(AVG(soh.TotalDue), 2) AS AvgOrderAmount,
    ROUND(MAX(soh.TotalDue), 2) AS MaxOrderAmount
FROM SalesLT.Customer AS c
INNER JOIN SalesLT.SalesOrderHeader AS soh 
    ON c.CustomerID = soh.CustomerID
GROUP BY 
    c.CustomerID, 
    c.FirstName, 
    c.LastName, 
    c.CompanyName
HAVING COUNT(soh.SalesOrderID) > 3
ORDER BY TotalPurchases DESC;