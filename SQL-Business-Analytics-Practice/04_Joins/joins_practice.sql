-- SQL JOIN Practice
-- Database tables: employee, department

-- 1. INNER JOIN: employee name and department name
SELECT e.name, d.department_name
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id;

-- 2. INNER JOIN: employee name, salary and manager
SELECT e.name, e.salary, d.manager
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id;

-- 3. LEFT JOIN: keep every employee
SELECT e.name, d.department_name
FROM employee AS e
LEFT JOIN department AS d
ON e.department_id = d.department_id;

-- 4. LEFT JOIN with department as the left table: keep every department
SELECT d.department_name, e.name
FROM department AS d
LEFT JOIN employee AS e
ON e.department_id = d.department_id;

-- 5. RIGHT JOIN: keep every department
SELECT e.name, d.department_name
FROM employee AS e
RIGHT JOIN department AS d
ON e.department_id = d.department_id;

-- 6. JOIN + WHERE: employees in IT
SELECT e.name, e.salary
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
WHERE d.department_name = 'IT';

-- 7. JOIN + WHERE + AND: Finance employees earning more than 50000
SELECT e.name, e.salary
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
WHERE d.department_name = 'Finance'
  AND e.salary > 50000;

-- 8. JOIN + WHERE + ORDER BY: salary above 40000
SELECT e.name, d.department_name, e.salary
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
WHERE e.salary > 40000
ORDER BY e.salary DESC;

-- 9. JOIN + GROUP BY + SUM: total salary by department
SELECT d.department_name,
       SUM(e.salary) AS total_salary
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
GROUP BY d.department_name;

-- 10. JOIN + GROUP BY + COUNT: employees per department
SELECT d.department_name,
       COUNT(e.name) AS total_employees
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
GROUP BY d.department_name;

-- 11. JOIN + GROUP BY + HAVING: departments with more than 1 employee
SELECT d.department_name,
       COUNT(e.name) AS total_employees
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(e.name) > 1;

-- 12. JOIN + AVG + HAVING: departments with average salary above 45000
SELECT d.department_name,
       AVG(e.salary) AS average_salary
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 45000;

-- 13. JOIN + SUM + COUNT + HAVING + ORDER BY
SELECT d.department_name,
       SUM(e.salary) AS total_salary,
       COUNT(e.name) AS number_of_employees
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING SUM(e.salary) > 70000
ORDER BY total_salary DESC;

-- 14. JOIN + WHERE + GROUP BY + HAVING + ORDER BY
-- Only employees earning more than 40000 are considered.
SELECT d.department_name,
       SUM(e.salary) AS total_salary
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
WHERE e.salary > 40000
GROUP BY d.department_name
HAVING SUM(e.salary) > 80000
ORDER BY total_salary DESC;

-- 15. JOIN + AVG + ORDER BY + LIMIT: highest average salary department
SELECT d.department_name,
       AVG(e.salary) AS average_salary
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY average_salary DESC
LIMIT 1;

-- 16. Highest total salary department
SELECT d.department_name,
       SUM(e.salary) AS total_salary,
       COUNT(e.name) AS number_of_employees
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY total_salary DESC
LIMIT 1;

-- 17. Highest employee count department
SELECT d.department_name,
       COUNT(e.name) AS employee_count
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY employee_count DESC
LIMIT 1;

-- 18. Highest average salary among employees older than 24
SELECT d.department_name,
       AVG(e.salary) AS average_salary,
       COUNT(e.name) AS employee_count
FROM employee AS e
INNER JOIN department AS d
ON e.department_id = d.department_id
WHERE e.age > 24
GROUP BY d.department_name
ORDER BY average_salary DESC
LIMIT 1;

-- 19. Every department, including departments with no employees
-- RIGHT JOIN keeps all departments.
SELECT d.department_name,
       SUM(e.salary) AS total_salary,
       COUNT(e.name) AS employee_count
FROM employee AS e
RIGHT JOIN department AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY total_salary DESC;
