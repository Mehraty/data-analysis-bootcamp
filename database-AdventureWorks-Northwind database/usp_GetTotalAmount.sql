CREATE PROCEDURE usp_GetTotallAmont
@orderid int
AS
BEGIN
SELECT ord.OrderID, cust.CompanyName,SUM(ord.Quantity*ord.UnitPrice) aS totalamont
FROM [Order Details] ord 
INNER JOIN Orders od on ord.OrderID=od.OrderID 
INNER JOIN Customers cust on od.CustomerID=cust.CustomerID
WHERE ord.OrderID=@orderid
GROUP BY ORD.OrderID, cust.CompanyName
END
GO

exec usp_GetTotallAmont @orderid=N'10248'
