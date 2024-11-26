USE northwind;

-- 1
SELECT ProductName, UnitPrice
FROM products 
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM products);

-- 2
SELECT OrderID, ShipName, ShipAddress
FROM orders
WHERE ShipVia = (
	SELECT ShipperID 
	FROM shippers 
    WHERE CompanyName = 'Federal Shipping');

-- 3
SELECT orderID
FROM `order details`
WHERE productID = (
    SELECT productID
    FROM products
    WHERE productName = 'Sasquatch Ale'
);

-- 4
select LastName, FirstName
from employees
where employeeID = (select employeeID from orders where orderID = 10266);

-- 5
select contactName
from customers 
where customerID = (select customerID from orders where OrderID = 10266);
    