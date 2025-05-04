
-- SELECT COUNT(*) AS TotalProducts
-- FROM Products;

-- SELECT SUM(Price) AS TotalNetworth
-- FROM Products;

-- SELECT AVG(Price) AS AvgPrice
-- FROM Products;

-- SELECT MAX(Price) AS MaxPrice, MIN(Price) AS MinPrice
-- FROM Products;

-- SELECT 
--   InStock,
--   COUNT(*)      AS CountByStock,
--   AVG(Price)    AS AvgPriceByStock,
--   MAX(Price)    AS HighestPrice,
--   MIN(Price)    AS LowestPrice
-- FROM Products
-- GROUP BY InStock;

-- SELECT 
--   InStock,
--   COUNT(*) AS CountByStock
-- FROM Products
-- GROUP BY InStock
-- HAVING COUNT(*) > 2;

-- SELECT 
--   InStock,             
--   COUNT(*)    AS Qty,       
--   SUM(Price)  AS TotalCost 
-- FROM Products
-- GROUP BY InStock
-- HAVING SUM(Price) > 9000;
