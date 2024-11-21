DROP database IF exists cardealership;
CREATE DATABASE cardealership;
USE cardealership;
CREATE TABLE dealerships (
dealership_id int not null auto_increment primary key,
name varchar(50),
address varchar(50),
phone varchar(12) 
);

INSERT INTO dealerships VALUES (null, 'D & B Used Cars', '111 Old Benbrook Rd', 81);
INSERT INTO dealerships VALUES (null, 'DJ AUTO SALES','765 carz ln', 1436576944);

CREATE TABLE vehicles (
vin int(20) not null primary key,
year int(4),
make varchar(20),
model varchar(20),
type varchar(20),
color varchar(20),
odometer int(20),
price decimal(10.2),
sold boolean
);

INSERT INTO vehicles VALUES(37846, 2001, 'ford', 'ranger', 'truck', 'yellow', 172544, 1995.00, false);
INSERT INTO vehicles VALUES(12345, 2015, 'honda', 'accord', 'sedan', 'black', 564332, 5000.00, false);
INSERT INTO vehicles VALUES(54321, 2024, 'bmw', '340i', 'sedan', 'white', 2000, 45000, false);
INSERT INTO vehicles VALUES(55641, 2022, 'chevrolet', 'corevette', 'coupe', 'white', 57623, 70000, false);
INSERT INTO vehicles VALUES(54353, 2024, 'toyota', 'camry', 'sedan', 'red', 4353, 25000, false);
INSERT INTO vehicles VALUES (10112, 1993, 'Ford', 'Explorer', 'SUV', 'Red', 525123, 995.00, true);
INSERT INTO vehicles VALUES (12345, 2015, 'honda', 'accord', 'sedan', 'black', 564332, 5000.0, true);
INSERT INTO vehicles VALUES(39846, 2021, 'Chevrolet', 'Silverado', 'truck', 'Black', 2750, 31995.00, true);
INSERT INTO vehicles VALUES(24313, 2024, 'BMW', '340i', 'sedan', 'blue', 1000, 60000.00, true);

CREATE TABLE inventory (
inventory_number int not null auto_increment primary key,
dealership_id int not null,
vin int(20) not null
);

CREATE TABLE sales_contract (
contract_id int not null auto_increment primary key,
date varchar(20),
first_name varchar(50),
last_name varchar(50),
email varchar(50),
vin int(20),
year int(4),
make varchar(20),
model varchar(20),
type varchar(20),
color varchar(20),
odometer int(20),
price decimal(10.2),
salestax_amount decimal(10.2),
total_price decimal(10.2),
processing_fee decimal(10.2),
recording_fee decimal(10.2),
finacing boolean,
monthly_payment decimal(10.2),

FOREIGN KEY (vin) references vehicles (vin) 
);
INSERT INTO sales_contract VALUES (null, '20210928', 'Dana', 'Wyatt', 'dana@texas.com', 10112, 1993, 'Ford', 'Explorer', 'SUV', 'Red', 525123, 995.00, 49.75, 100.00, 295.00, 1439.75, false, 0.00);
INSERT INTO sales_contract VALUES (null, '20241101', 'jontez', 'snyder', 'jontez@mail.com', 12345, 2015, 'honda', 'accord', 'sedan', 'black', 564332, 5000.0, 0.05, 0.00, 295.00, 100.00, true, 214.08);

CREATE TABLE lease_contract (
contract_id int not null auto_increment primary key,
date varchar(20),
first_name varchar(50),
last_name varchar(50),
email varchar(50),
vin int(20),
year int(4),
make varchar(20),
model varchar(20),
type varchar(20),
color varchar(20),
odometer int(20),
price decimal(10.2) ,
expected_endingValue decimal(10.2),
leasing_fee decimal(10.2),
total_price decimal(10.2),
monthly_payment decimal(10.2),

FOREIGN KEY (vin) references vehicles (vin)
);

INSERT INTO lease_contract VALUES(null, '20210928', 'Zachary', 'Westly', 'zach@texas.com', 37846, 2021, 'Chevrolet', 'Silverado', 'truck', 'Black', 2750, 31995.00, 15997.50, 2239.65, 18337.15, 541.39);
INSERT INTO lease_contract VALUES(null, '20241101', 'Damian', 'Jerez', 'damian@mail.com', 24313, 2024, 'BMW', '340i', 'sedan', 'blue', 1000, 60000.00, 30000.00, 64200.00, 86400.00, 2400.00);



