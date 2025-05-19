SELECT users.name, sub.max_price
FROM (
  SELECT user_id, MAX(price) AS max_price
  FROM orders
  WHERE created_at >= DATE('now', '-1 month')
  GROUP BY user_id
) AS sub
JOIN users ON users.id = sub.user_id;
