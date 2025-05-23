-- SELECT users.name, sub.max_price
-- FROM (
--   SELECT user_id, MAX(price) AS max_price
--   FROM orders
--   WHERE created_at >= DATE('now', '-1 month')
--   GROUP BY user_id
-- ) AS sub
-- JOIN users ON users.id = sub.user_id;

-- -- CTE ver. 

-- WITH recent_orders AS (
--   SELECT * FROM orders WHERE created_at >= DATE('now', '-1 month')
-- ),
-- max_orders AS (
--   SELECT user_id, MAX(price) AS max_price
--   FROM recent_orders
--   GROUP BY user_id
-- )
-- SELECT users.name, max_orders.max_price
-- FROM max_orders
-- JOIN users ON users.id = max_orders.user_id;

-- -- AR ver.

-- subquery = Order
--   .where('created_at >= ?', 1.month.ago)
--   .select('user_id, MAX(price) as max_price')
--   .group('user_id')

-- User
--   .joins("JOIN (#{subquery.to_sql}) AS sub ON sub.user_id = users.id")
--   .select('users.name, sub.max_price')
-------------------

WITH orders_with_ids AS (
    SELECT ProductID, SUM(oi.UnitPrice * oi.Quantity) AS TotalOrderPrice, OrderID
    FROM OrderItems oi
    INNER JOIN Products p ON p.CategoryID = oi.ProductID
    WHERE oi.ProductID = 1 
    GROUP BY ProductID, OrderID
)

SELECT TotalOrderPrice, CustomerName
FROM Orders o 
INNER JOIN orders_with_ids owi ON owi.OrderID = o.OrderID
INNER JOIN Shop s ON s.CustomerID = o.CustomerID
WHERE TotalOrderPrice > 300
