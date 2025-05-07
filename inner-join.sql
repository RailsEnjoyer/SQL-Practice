-- SELECT o.OrderID, o.OrderDate, s.CustomerName
-- FROM Orders o
-- INNER JOIN Shop s ON s.CustomerID = o.CustomerID

-- SELECT oi.OrderID, p.CategoryName, oi.Quantity
-- FROM OrderItems oi
-- INNER JOIN Products p ON p.CategoryID = oi.ProductID

-- SELECT s.CustomerName, MAX(o.OrderDate) AS LastOrderDate
-- FROM Shop s
-- INNER JOIN Orders o ON s.CustomerID = o.CustomerID
-- GROUP BY s.CustomerName;

-- SELECT oi.OrderID, p.CategoryName, oi.UnitPrice, oi.Quantity
-- FROM OrderItems oi
-- INNER JOIN Products p ON oi.ProductID = p.CategoryID
-- WHERE p.CategoryName = 'Electronics';


-- SELECT p.CategoryName, SUM(oi.Quantity) AS OrdersQuantity
-- FROM OrderItems oi
-- INNER JOIN Products p ON oi.ProductID = p.CategoryID
-- GROUP BY p.CategoryName;

-- SELECT o.OrderID, s.CustomerName, SUM(oi.Quantity * oi.UnitPrice) AS TotalPrice
-- FROM Shop s
-- INNER JOIN Orders o ON s.CustomerID = o.CustomerID
-- INNER JOIN OrderItems oi ON s.CustomerID = oi.OrderID
-- INNER JOIN Products p ON p.CategoryID = oi.ProductID
-- GROUP BY o.OrderID, s.CustomerName;

-- SELECT o.OrderID, s.CustomerName, SUM(oi.Quantity * oi.UnitPrice) AS TotalPrice
-- FROM Orders o
-- INNER JOIN Shop s ON o.CustomerID = s.CustomerID
-- INNER JOIN OrderItems oi ON o.OrderID = oi.OrderID
-- INNER JOIN Products p ON oi.ProductID = p.CategoryID
-- GROUP BY o.OrderID, s.CustomerName;
