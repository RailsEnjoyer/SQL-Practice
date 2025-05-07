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

-- CREATE TABLE Shop (
--   CustomerID INT PRIMARY KEY,
--   CustomerName NVARCHAR(50),
--   City NVARCHAR(50)
-- );

-- CREATE TABLE Orders (
--   OrderID INT PRIMARY KEY,
--   CustomerID INT,
--   OrderDate DATE
-- );

-- CREATE TABLE OrderItems (
--   OrderItemID INT PRIMARY KEY,
--   OrderID INT,
--   ProductID INT,
--   Quantity INT,
--   UnitPrice DECIMAL(18, 2)
-- );

-- CREATE TABLE Products (
--   CategoryID INT PRIMARY KEY,
--   CategoryName NVARCHAR(50)
-- );

-- DELETE FROM OrderItems;
-- DELETE FROM Orders;
-- DELETE FROM Products;
-- DELETE FROM Shop;

-- Shop: Customers
-- INSERT INTO Shop (CustomerID, CustomerName, City)
-- VALUES
-- (1, 'Artem Kovalev', 'Minsk'),
-- (2, 'Yulia Romanova', 'Grodno'),
-- (3, 'Sergey Lisovets', 'Brest'),
-- (4, 'Anna Orlova', 'Gomel'),
-- (5, 'Mikhail Kozlov', 'Mogilev');

-- -- Products: Categories
-- INSERT INTO Products (CategoryID, CategoryName)
-- VALUES
-- (1, 'Electronics'),
-- (2, 'Stationery'),
-- (3, 'Household Chemicals'),
-- (4, 'Groceries'),
-- (5, 'Clothing');

-- -- Orders
-- INSERT INTO Orders (OrderID, CustomerID, OrderDate)
-- VALUES
-- (1, 1, '2025-05-01'),
-- (2, 2, '2025-05-02'),
-- (3, 3, '2025-05-03'),
-- (4, 1, '2025-05-04'),
-- (5, 4, '2025-05-05'),
-- (6, 5, '2025-05-06'),
-- (7, 2, '2025-05-07'),
-- (8, 5, '2025-05-08');

-- -- OrderItems
-- INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity, UnitPrice)
-- VALUES
-- (1, 1, 1, 2, 299.99),
-- (2, 1, 3, 1, 75.50),
-- (3, 2, 2, 3, 12.20),
-- (4, 3, 5, 2, 49.90),
-- (5, 4, 4, 5, 5.50),
-- (6, 5, 2, 1, 14.30),
-- (7, 6, 1, 1, 399.00),
-- (8, 7, 4, 10, 2.99),
-- (9, 8, 3, 2, 60.00);
