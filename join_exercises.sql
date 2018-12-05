USE join_test_db;

SELECT users.name as user_name, roles.name as role_name FROM users JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name FROM users LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name FROM users RIGHT JOIN roles ON users.role_id = roles.id;

USE employees;

SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Name`
FROM employees as e
            JOIN titles as t
                 ON t.emp_no = e.emp_no
            JOIN dept_emp as de
                 ON de.emp_no = e.emp_no
            JOIN departments as d
                 ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND t.title = 'Manager'
ORDER BY d.dept_name;

SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Name`
FROM employees as e
            JOIN titles as t
                 ON t.emp_no = e.emp_no
            JOIN dept_emp as de
                 ON de.emp_no = e.emp_no
            JOIN departments as d
                 ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND t.title = 'Manager' AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title AS `Title`, COUNT(*) AS `Count`
FROM titles as t
            JOIN employees as e
                 ON t.emp_no = e.emp_no
            JOIN dept_emp as de
                 ON de.emp_no = e.emp_no
            JOIN departments as d
                 ON d.dept_no = de.dept_no
WHERE de.to_date LIKE '9999%' AND d.dept_name = 'Customer Service' AND t.to_date LIKE '9999%'
GROUP BY t.title
ORDER BY t.title;

SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Name`, s.salary as `Salary`
FROM employees as e
            JOIN salaries as s
                 ON s.emp_no = e.emp_no
            JOIN titles as t
                 ON t.emp_no = e.emp_no
            JOIN dept_emp as de
                 ON de.emp_no = e.emp_no
            JOIN departments as d
                 ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND t.title = 'Manager' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;