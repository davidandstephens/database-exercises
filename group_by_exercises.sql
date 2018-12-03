USE employees;

SELECT DISTINCT title FROM titles;

SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%e' GROUP BY first_name, last_name;

SELECT last_name, COUNT(last_name) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name ORDER BY COUNT(last_name) DESC;

SELECT COUNT(*), gender FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') GROUP BY gender ORDER BY COUNT(*) DESC;