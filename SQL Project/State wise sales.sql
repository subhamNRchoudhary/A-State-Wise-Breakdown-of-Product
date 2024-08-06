Create Table Statesales (
state_name varchar(50),
Product_sold varchar(50),
price_of_product int,
nu_of_quantity int
);

insert into Statesales (state_name,Product_sold,price_of_product,nu_of_quantity)
values
('Gujarat','Smartphone',20000,3),('Maharashtra', 'Mouse', 500, 10),('Rajasthan', 'Camera', 30000, 1),('Gujarat', 'Headphones', 2000, 5),('Uttar Pradesh', 'Mouse', 500, 3),('Maharashtra', 'Camera', 30000, 2),('West Bengal', 'Mouse', 500, 2),
('Tamil Nadu', 'Printer', 5000, 1),('Punjab', 'Camera', 30000, 5),('Kerala', 'Tablet', 15000, 2),('West Bengal', 'Mouse', 500, 3),('Punjab', 'Camera', 30000, 5),('Maharashtra', 'Laptop', 50000, 5),('Rajasthan', 'Headphones', 2000, 1),
('Karnataka', 'Smartphone', 20000, 10),('Karnataka', 'Mouse', 500, 4),('Kerala', 'Printer', 5000, 5),('Rajasthan', 'Printer', 5000, 5),('Karnataka', 'Smartphone', 20000, 3),('Punjab', 'Camera', 30000, 2),('Gujarat', 'Printer', 5000, 1),
('Tamil Nadu', 'Monitor', 10000, 2),('Tamil Nadu', 'Smartphone', 20000, 4),('Rajasthan', 'Tablet', 15000, 5),('Punjab', 'Smartphone', 20000, 10),('Gujarat', 'Mouse', 500, 5),('West Bengal', 'Printer', 5000, 4),('Rajasthan', 'Monitor', 10000, 2),
('West Bengal', 'Smartwatch', 10000, 1),('Uttar Pradesh', 'Headphones', 2000, 10),('Maharashtra', 'Camera', 30000, 5),('Kerala', 'Camera', 30000, 2),('Haryana', 'Mouse', 500, 2),('Tamil Nadu', 'Smartwatch', 10000, 2),
('Gujarat', 'Keyboard', 1000, 1),('Gujarat', 'Camera', 30000, 10),('Gujarat', 'Keyboard', 1000, 10),('Maharashtra', 'Tablet', 15000, 5),
('Uttar Pradesh', 'Smartwatch', 10000, 10),('Maharashtra', 'Mouse', 500, 3),('Karnataka', 'Monitor', 10000, 5),('Gujarat', 'Laptop', 50000, 3),('Karnataka', 'Keyboard', 1000, 4),('Gujarat', 'Smartwatch', 10000, 5),
('Punjab', 'Monitor', 10000, 1),
('Haryana', 'Laptop', 50000, 2),('Rajasthan', 'Laptop', 50000, 5),('Haryana', 'Smartwatch', 10000, 4),('Kerala', 'Smartphone', 20000, 1),('Gujarat', 'Monitor', 10000, 10),('Haryana', 'Keyboard', 1000, 3),
('Kerala', 'Tablet', 15000, 4),('Tamil Nadu', 'Headphones', 2000, 10),('Punjab', 'Tablet', 15000, 2),('Karnataka', 'Mouse', 500, 1),('Kerala', 'Mouse', 500, 1),('Kerala', 'Smartphone', 20000, 5),('Karnataka', 'Headphones', 2000, 10),('Karnataka', 'Keyboard', 1000, 10),('West Bengal', 'Keyboard', 1000, 2),('West Bengal', 'Headphones', 2000, 3),('Uttar Pradesh', 'Keyboard', 1000, 3),('Haryana', 'Headphones', 2000, 4),
('Maharashtra', 'Laptop', 50000, 4),
('Tamil Nadu', 'Laptop', 50000, 1),
('Gujarat', 'Smartwatch', 10000, 3),
('Kerala', 'Monitor', 10000, 4),
('Punjab', 'Camera', 30000, 3),
('Gujarat', 'Monitor', 10000, 5),
('Tamil Nadu', 'Monitor', 10000, 5),
('Karnataka', 'Mouse', 500, 10),
('Kerala', 'Tablet', 15000, 10),('Kerala', 'Laptop', 50000, 4),('Rajasthan', 'Tablet', 15000, 10),('Uttar Pradesh', 'Printer', 5000, 5),('Punjab', 'Smartphone', 20000, 1),('West Bengal', 'Smartwatch', 10000, 2),('Punjab', 'Mouse', 500, 10),('Punjab', 'Printer', 5000, 1),('Punjab', 'Laptop', 50000, 1),('Gujarat', 'Printer', 5000, 2),('Haryana', 'Monitor', 10000, 4),('Uttar Pradesh', 'Monitor', 10000, 5),('Tamil Nadu', 'Mouse', 500, 4),
('Punjab', 'Laptop', 50000, 2),('Kerala', 'Laptop', 50000, 3),('Haryana', 'Monitor', 10000, 10),('West Bengal', 'Smartwatch', 10000, 4),('Karnataka', 'Camera', 30000, 10),
('Rajasthan', 'Smartwatch', 10000, 1),
('Tamil Nadu', 'Smartwatch', 10000, 1),('Uttar Pradesh', 'Tablet', 15000, 4),('Maharashtra', 'Printer', 5000, 1),('Gujarat', 'Monitor', 10000, 1),('Tamil Nadu', 'Camera', 30000, 5),
('Uttar Pradesh', 'Camera', 30000, 4),
('Tamil Nadu', 'Keyboard', 1000, 1),
('Haryana', 'Smartphone', 20000, 10),
('Gujarat', 'Tablet', 15000, 10),
('Karnataka', 'Mouse', 500, 2),
('Maharashtra', 'Headphones', 2000, 4),
('Punjab', 'Keyboard', 1000, 4),
('Kerala', 'Monitor', 10000, 10),
('Gujarat', 'Camera', 30000, 3),
('Punjab', 'Smartwatch', 10000, 5);

#Top 5 questiom

#Find the total sales (price * quantity) for each state

SELECT state_name, SUM(price_of_product * nu_of_quantity) AS total_sales
FROM Statesales
GROUP BY state_name;

#Find the state with the highest total sales.

SELECT state_name, SUM(price_of_product * nu_of_quantity) AS total_sales
FROM Statesales
GROUP BY state_name
ORDER BY total_sales DESC
LIMIT 1;

SELECT state_name, SUM(price_of_product * nu_of_quantity) AS total_sales
FROM Statesales
GROUP BY state_name
ORDER BY total_sales DESC
LIMIT 2 offset 3;

#Find the most sold product (by quantity) across all states

SELECT product_sold, SUM(nu_of_quantity) AS total_quantity_sold
FROM Statesales
GROUP BY product_sold
ORDER BY total_quantity_sold DESC
LIMIT 1;

#List all the products sold in 'Gujarat'

SELECT DISTINCT product_sold
FROM Statesales
WHERE state_name = 'Gujarat';

#Find the total number of different products sold in each state

SELECT state_name, COUNT(DISTINCT product_sold) AS total_different_products
FROM Statesales
GROUP BY state_name;

