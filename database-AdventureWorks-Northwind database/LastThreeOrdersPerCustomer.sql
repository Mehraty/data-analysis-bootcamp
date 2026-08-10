WITH CustomerOrders AS (
    SELECT 
        c.CustomerID,
        c.FirstName + ' ' + c.LastName AS FullName,
        soh.SalesOrderID,
        soh.OrderDate,
        soh.TotalDue,
        ROW_NUMBER() OVER (
            PARTITION BY c.CustomerID 
            ORDER BY soh.OrderDate DESC
        ) AS OrderRank
    FROM SalesLT.Customer c
    JOIN SalesLT.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
)
SELECT 
    CustomerID,
    FullName,
    SalesOrderID,
    OrderDate,
    TotalDue
FROM CustomerOrders
WHERE OrderRank <= 3
ORDER BY CustomerID DESC, OrderDate DESC;
