USE employees;

SELECT first_name, last_name FROM employees WHERE emp_no IN(SELECT emp_no FROM dept_manager WHERE to_date > NOW() AND dept_no IN (SELECT dept_no FROM departments WHERE dept_name = 'Sales'));

SELECT e.first_name, e.last_name, t.title, d.dept_name
FROM employees AS e
  JOIN dept_emp de
    on e.emp_no = de.emp_no
  JOIN titles as t
    on t.emp_no = e.emp_no
  JOIN departments AS d
    on de.dept_no = d.dept_no
WHERE t.to_date LIKE '9999%' AND t.title = 'Senior Engineer' AND de.to_date LIKE '9999%' AND d.dept_name = 'Customer Service';

SELECT first_name, last_name FROM employees WHERE emp_no IN (SELECT emp_no FROM dept_emp WHERE to_date LIKE '9999%' AND dept_no IN (SELECT dept_no FROM departments WHERE dept_name = 'Sales'));

SELECT birth_date, COUNT(birth_date) from employees GROUP BY birth_date ORDER BY COUNT(birth_date) DESC LIMIT 1;

SELECT birth_date, COUNT(birth_date) from employees GROUP BY birth_date ORDER BY COUNT(birth_date) ASC LIMIT 1;

SELECT d.dept_name, AVG(s.salary) from salaries AS s
  JOIN dept_emp as de
    ON de.emp_no = s.emp_no
  JOIN departments AS d
    ON de.dept_no = d.dept_no
WHERE s.to_date LIKE '9999%' AND de.to_date LIKE '9999%'
GROUP BY d.dept_name;

SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager Name`, s.salary as `Salary`
FROM employees as e
       JOIN salaries as s
            ON s.emp_no = e.emp_no
       JOIN dept_manager as dm
            ON dm.emp_no = e.emp_no
       JOIN departments as d
            ON d.dept_no = dm.dept_no
ORDER BY s.salary ASC
LIMIT 5;

SELECT CONCAT(e.first_name, ' ', e.last_name), d.dept_name, e.birth_date, t.title FROM departments AS d
  JOIN dept_emp AS de
    ON de.dept_no = d.dept_no
  JOIN employees AS e
    ON e.emp_no = de.emp_no
  JOIN titles AS t
    ON t.emp_no = e.emp_no
WHERE t.to_date LIKE '9999%' AND de.to_date LIKE '9999%' AND
ORDER BY e.birth_date ASC;