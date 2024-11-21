-- 1
SELECT * FROM dealerships;

-- 2
SELECT * FROM vehicles WHERE dealership_id = 2;

-- 3
SELECT * FROM vehicles WHERE vin = 12345;

-- 4
SELECT dealership_id FROM vehicles WHERE vin = 54321;

-- 5
SELECT dealership_id FROM vehicles WHERE type = 'sedan';

-- 6
SELECT * FROM sales_contract sc
JOIN vehicles v ON sc.vin = v.vin
where v.dealership_id = 1 AND sc.vehicle_date BETWEEN date('2023-11-01') AND date('2024-11-01');
