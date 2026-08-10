SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS FullName,
    COUNT(soh.SalesOrderID) AS NumberOfOrders,
    ROUND(AVG(soh.TotalDue), 2) AS AvgOrderAmount,
    ROUND(SUM(soh.TotalDue), 2) AS TotalPurchases,
    ROUND(MAX(soh.TotalDue), 2) AS MaxOrderAmount
FROM SalesLT.Customer AS c
INNER JOIN SalesLT.SalesOrderHeader AS soh 
    ON c.CustomerID = soh.CustomerID
GROUP BY 
    c.CustomerID, 
    c.FirstName, 
    c.LastName
HAVING 
    MAX(soh.TotalDue) > 1000                    -- حداقل یک سفارش بالای ۱۰۰۰ دلار
    AND AVG(soh.TotalDue) > 500                 -- میانگین سفارشات بالای ۵۰۰ دلار
ORDER BY TotalPurchases DESC;                   -- مرتب‌سازی نزولی بر اساس مجموع خرید