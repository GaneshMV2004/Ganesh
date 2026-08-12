USE xyz_company;

-- Count employees in each department
SELECT department, COUNT(*) AS total_employees
FROM employee
GROUP BY department;

-- Count employees in each city
SELECT city, COUNT(*) AS total_employees
FROM employee
GROUP BY city;

-- Total salary of each department
SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department;

-- Total salary of each city
SELECT city, SUM(salary) AS total_salary
FROM employee
GROUP BY city;

-- Average salary of each department
SELECT department, AVG(salary) AS average_salary
FROM employee
GROUP BY department;

-- Average salary of each city
SELECT city, AVG(salary) AS average_salary
FROM employee
GROUP BY city;

-- Highest salary in each department
SELECT department, MAX(salary) AS highest_salary
FROM employee
GROUP BY department;

-- Lowest salary in each department
SELECT department, MIN(salary) AS lowest_salary
FROM employee
GROUP BY department;

-- Average age of employees in each department
SELECT department, AVG(age) AS average_age
FROM employee
GROUP BY department;

-- Number of employees and total salary for each department
SELECT department,
       COUNT(*) AS total_employees,
       SUM(salary) AS total_salary
FROM employee
GROUP BY department;