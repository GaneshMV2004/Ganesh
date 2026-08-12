CREATE DATABASE xyz_company;
USE xyz_company;

CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT,
    age INT
);

INSERT INTO employee VALUES
(1, 'Ganesh', 'IT', 'Bangalore', 45000, 22),
(2, 'Rahul', 'HR', 'Mysore', 35000, 25),
(3, 'Priya', 'IT', 'Bangalore', 55000, 24),
(4, 'Anjali', 'Finance', 'Chennai', 60000, 28),
(5, 'Kiran', 'HR', 'Bangalore', 40000, 23),
(6, 'Arjun', 'IT', 'Mysore', 50000, 26),
(7, 'Sneha', 'Finance', 'Bangalore', 65000, 27),
(8, 'Rohit', 'IT', 'Chennai', 48000, 25),
(9, 'Divya', 'HR', 'Chennai', 38000, 24),
(10, 'Vikram', 'Finance', 'Mysore', 70000, 30);

-- SELECT
SELECT * FROM employee;
SELECT salary FROM employee;
SELECT name, department, city FROM employee;

-- WHERE
SELECT * FROM employee
WHERE salary > 50000;

SELECT * FROM employee
WHERE department = 'IT';

-- ORDER BY
SELECT * FROM employee
ORDER BY salary;

SELECT * FROM employee
ORDER BY salary DESC;

SELECT * FROM employee
ORDER BY age;

-- LIMIT
SELECT * FROM employee
ORDER BY salary
LIMIT 3;

-- DISTINCT
SELECT DISTINCT department FROM employee;
SELECT DISTINCT city FROM employee;

-- LIKE
-- Example practice queries can be added here.

-- BETWEEN
SELECT * FROM employee
WHERE salary BETWEEN 40000 AND 60000;

SELECT * FROM employee
WHERE age BETWEEN 23 AND 27
ORDER BY age;

-- IN
SELECT * FROM employee
WHERE city IN ('Bangalore', 'Mysore');

SELECT * FROM employee
WHERE department IN ('IT', 'Finance');