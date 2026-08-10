CREATE PROCEDURE usp_GetTotalAmount_WithProductID2
    @orderid int,
    @ProductID int = NULL
AS
BEGIN
    SELECT ord.OrderID, ord.ProductID, cust.CompanyName,
           SUM(ord.Quantity * ord.UnitPrice) AS TotalAmount
    FROM [Order Details] ord 
    INNER JOIN Orders od ON ord.OrderID = od.OrderID 
    INNER JOIN Customers cust ON od.CustomerID = cust.CustomerID
    WHERE ord.OrderID = @orderid 
      AND (@ProductID IS NULL OR ord.ProductID = @ProductID)
    GROUP BY ord.OrderID, ord.ProductID, cust.CompanyName
END
GO


EXEC usp_GetTotalAmount_WithProductID2 @orderid=N'10248'
