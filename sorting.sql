-- SELECT TOP 5 *
-- FROM Products
-- ORDER BY Price ASC;

-- SELECT *
-- FROM Products
-- ORDER BY Price DESC
-- OFFSET 10 ROWS        -- (3−1)*5 = 10
-- FETCH NEXT 5 ROWS ONLY;

-- SELECT *,
--         CASE
--            WHEN Price < 300  THEN 'Cheap'
--            WHEN Price BETWEEN 300 AND 1000 THEN 'Medium'
--            ELSE 'Expensive'
--         END AS PriceCategory,
--         Price * 0.9 AS Discount
-- FROM Products
-- ORDER BY Discount ASC, Price DESC;

WITH Computed AS (
    SELECT *, 
        CASE 
            WHEN ProductName = 'Samsung' OR ProductName = 'IPhone' THEN 'Electronic'
            ELSE 'Non-electronic'
        END AS Type,
        DATEADD(
            DAY,
            - ABS(CHECKSUM(NEWID())) % 365,
            GETDATE()
        ) AS CreatedDate
    FROM Products
),

Paged AS (
    SELECT *,
    ROW_NUMBER() OVER (
            ORDER BY CreatedDate DESC
    ) AS RowNumber
    FROM Computed
    ORDER BY CreatedDate DESC
    OFFSET 9 ROWS --(4-1)*3
    FETCH NEXT 3 ROWS ONLY
)

SELECT *
FROM Paged;


