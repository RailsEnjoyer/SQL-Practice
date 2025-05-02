WITH Discounted AS (
  SELECT *,
         CASE
           WHEN Price < 300             THEN 'Cheap'
           WHEN Price BETWEEN 300 AND 1000 THEN 'Medium'
           ELSE 'Expensive'
         END AS PriceCategory,
         Price * 0.9 AS Discount
  FROM Products
  WHERE InStock = 0
    AND ProductName LIKE '%one'
)
SELECT *
FROM Discounted
WHERE Discount > 100;
