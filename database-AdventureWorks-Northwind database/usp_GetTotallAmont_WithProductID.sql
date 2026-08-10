CREATE PROCEDURE usp_GetTotallAmont_WithProductID
@orderid int,
@ProductID int
AS
BEGIN
SELECT ord.OrderID,ord.ProductID, cust.CompanyName,SUM(ord.Quantity*ord.UnitPrice) aS totalamont
FROM [Order Details] ord 
INNER JOIN Orders od on ord.OrderID=od.OrderID 
INNER JOIN Customers cust on od.CustomerID=cust.CustomerID
WHERE ord.OrderID=@orderid AND ord.ProductID=@ProductID
GROUP BY ORD.OrderID,ord.ProductID, cust.CompanyName
END
GO

exec usp_GetTotallAmont_WithProductID @orderid=N'10248',@ProductID=N'42'