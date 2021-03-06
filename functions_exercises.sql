USE employees;

# SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;

# SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ', last_name), DATEDIFF(curdate(), hire_date) FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25' ORDER BY hire_date ASC, birth_date DESC;