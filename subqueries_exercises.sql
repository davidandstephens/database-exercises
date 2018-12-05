USE employees;

SELECT * FROM employees WHERE hire_date IN (SELECT hire_date FROM employees WHERE emp_no = 101010);

SELECT title, COUNT(title) FROM titles where emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod') GROUP BY title;

SELECT first_name, last_name FROM employees WHERE gender = 'F' AND emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date LIKE '9999%');

SELECT dept_name FROM departments WHERE dept_no IN (SELECT dept_no FROM dept_manager WHERE to_date LIKE '9999%' AND emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F')) ORDER BY dept_name;

--  https://stackoverflow.com/questions/1547125/sql-how-to-find-the-highest-number-in-a-column
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees WHERE emp_no IN (SELECT emp_no FROM salaries WHERE to_date LIKE '9999%' AND salary IN (SELECT MAX(salary) from salaries));

