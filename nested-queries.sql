USE northwind;

-- 1
SELECT ProductName, UnitPrice
FROM products 
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM products);

-- 2
SELECT OrderID, ShipName, ShipAddress
FROM orders
WHERE ShipVia = (SELECT ShipperID FROM shippers WHERE CompanyName = 'Federal Shipping');

-- 3
SELECT 
