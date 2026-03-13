CREATE DATABASE order_management;

USE order_management;

-- Customers Table
CREATE TABLE Customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
email VARCHAR(100)
);

-- Products Table
CREATE TABLE Products(
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(50),
price DECIMAL(10,2)
);

-- Orders Table
CREATE TABLE Orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
product_id INT,
quantity INT,
order_date DATE,
FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY(product_id) REFERENCES Products(product_id)
);

-- Sample Data

INSERT INTO Customers(name,email) VALUES
('Kiran','kiran@email.com'),
('Rahul','rahul@email.com'),
('Anjali','anjali@email.com');

INSERT INTO Products(product_name,price) VALUES
('Laptop',80000),
('Phone',20000),
('Headphones',3000);

INSERT INTO Orders(customer_id,product_id,quantity,order_date) VALUES
(1,1,1,'2024-01-10'),
(1,3,2,'2024-02-15'),
(2,2,1,'2024-02-20'),
(3,3,3,'2024-03-05'),
(2,1,1,'2024-03-10');
SELECT 
c.name AS customer_name,
p.product_name,
o.quantity,
p.price,
(o.quantity * p.price) AS total_price,
o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id
ORDER BY o.order_date DESC;
SELECT *
FROM (
SELECT 
c.name,
p.product_name,
(o.quantity * p.price) AS total_value
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id
) AS order_values
ORDER BY total_value DESC
LIMIT 1;
SELECT name
FROM Customers
WHERE customer_id = (
SELECT customer_id
FROM Orders
GROUP BY customer_id
ORDER BY COUNT(order_id) DESC
LIMIT 1
);