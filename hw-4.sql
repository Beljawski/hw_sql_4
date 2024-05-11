
-- Задача 1. Вывести общее ко-во поставщиков не из UK и не из China
SELECT
count(*) AS tottal_suppliers
FROM Suppliers
WHERE
not
Country IN ("UK","China")
-- Задача 2. Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5
SELECT 
COUNT(*) AS total_products,
MIN(Price) AS min_price,
MAX(Price) AS max_price
FROM Products
where
CategoryID IN (3,5)
-- Задача 3. Вывести общую сумму проданных товаров
SELECT
SUM(Price) AS tottal_price
FROM Products
-- Задача 4. Вывести данные о заказах (номерзаказа, имяклиента, странаклиента, фамилияменеджера, названиекомпанииперевозчика)
SELECT
Orders.OrderID,
Customers.CustomerName,
Customers.Country,
Employees.LastName,
Shippers.ShipperName
FROM Orders
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
JOIN Shippers ON Shippers.ShipperID = Orders.ShipperID
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
-- Задача 5. Вывести сумму, на которую было отправлено товаров клиентам в Germany
SELECT
Count(*) AS total_orders_germany
FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
WHERE
Customers.Country = "Germany"