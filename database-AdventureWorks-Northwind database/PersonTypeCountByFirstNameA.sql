USE AdventureWorks2025

SELECT PersonType, COUNT(PersonType) AS PersonCount
FROM Person.Person
WHERE FirstName LIKE 'A%'
GROUP BY PersonType