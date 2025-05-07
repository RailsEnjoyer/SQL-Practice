-- only shows matching rows 
-- SELECT OrderID, s.CustomerID, OrderDate, CustomerName, City
-- FROM Orders o
-- INNER JOIN Shop s ON o.CustomerID = s.CustomerID;

-- shows everything from left table and matching rows from right
-- SELECT s.CustomerName, o.OrderDate
-- FROM Shop s
-- LEFT JOIN Orders o ON s.CustomerID = o.CustomerID;

-- shows everything from right table and matching rows from left
-- SELECT o.OrderID, s.CustomerName
-- FROM Orders o
-- RIGHT JOIN Shop s ON o.CustomerID = s.CustomerID;

-- shows all rows from all tables where matching
-- SELECT s.CustomerName, o.OrderDate
-- FROM Shop s
-- FULL JOIN Orders o ON s.CustomerID = o.CustomerID;

-- each row from first table has every row from second
-- SELECT s.CustomerName, p.CategoryName
-- FROM Shop s
-- CROSS JOIN Products p;
