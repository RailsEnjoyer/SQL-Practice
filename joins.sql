-- CREATE TABLE Customers (
--   CustomerID INT PRIMARY KEY,
--   Name NVARCHAR(50)
-- );
-- CREATE TABLE Orders (
--   OrderID INT PRIMARY KEY,
--   CustomerID INT,
--   Amount DECIMAL(10,2)
-- );

-- INSERT INTO Customers VALUES
--   (1, N'Иван'),
--   (2, N'Ольга'),
--   (3, N'Пётр');

-- INSERT INTO Orders VALUES
--   (10, 1, 100.00),
--   (11, 1, 50.00),
--   (12, 2, 200.00);

SELECT 
  c.Name,
  o.OrderID,
  o.Amount
FROM Customers AS c 
LEFT JOIN Orders AS o  
  ON c.CustomerID = o.CustomerID;

