select * from products;
select distinct Country from customers;
select orderDate from orders;
select count(distinct CustomerID) from customers;
select  distinct UnitPrice from products order by UnitPrice desc;
select  distinct UnitPrice from products order by UnitPrice asc;
SELECT * FROM products where UnitPrice order by UnitPrice desc;
