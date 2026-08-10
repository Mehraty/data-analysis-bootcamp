USE AdventureWorks2025

SELECT ProductModelID, AVG(ListPrice) AS AVGLISTPRICE
FROM Production.Product
WHERE ListPrice > 1000
GROUP BY ProductModelID
ORDER BY ProductModelID ASC