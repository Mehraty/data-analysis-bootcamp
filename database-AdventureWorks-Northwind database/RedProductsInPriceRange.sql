USE AdventureWorks2025

SELECT ProductModelID, Name, ListPrice
FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 2000 AND Color = 'Red'
ORDER BY ListPrice DESC