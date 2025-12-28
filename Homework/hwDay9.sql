SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.id = departments.emp_id;

SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.id = departments.emp_id;

SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.id = departments.emp_id;

