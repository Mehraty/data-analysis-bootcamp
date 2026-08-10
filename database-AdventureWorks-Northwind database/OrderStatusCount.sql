USE AdventureWorks2025
SELECT Status, COUNT(Status) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY Status
