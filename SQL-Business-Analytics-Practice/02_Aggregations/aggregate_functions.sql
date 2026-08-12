USE xyz_company;

-- COUNT
SELECT COUNT(*) FROM employee
WHERE city = 'Bangalore';

SELECT COUNT(*) FROM employee
WHERE salary > 50000;

-- SUM
SELECT SUM(salary) FROM employee;

SELECT SUM(salary) FROM employee
WHERE department = 'IT';

SELECT SUM(salary) FROM employee
WHERE city = 'Bangalore';

-- AVG
SELECT AVG(salary) FROM employee;

SELECT AVG(age) FROM employee;

SELECT AVG(salary) FROM employee
WHERE department = 'IT';

-- MIN
SELECT MIN(salary) FROM employee;

SELECT MIN(age) FROM employee;

SELECT MIN(salary) FROM employee
WHERE department = 'IT';

-- MAX
SELECT MAX(salary) FROM employee;

SELECT MAX(age) FROM employee;

SELECT MAX(salary) FROM employee
WHERE department = 'Finance';