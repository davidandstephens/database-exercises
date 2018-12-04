USE employees;

# what are the top three most common job titles?
SELECT title FROM titles GROUP BY title ORDER BY COUNT(*) DESC LIMIT 1;
# what is the lowest employee number for the first senior engineers in the company?
SELECT emp_no FROM titles WHERE title = 'Senior Engineer' ORDER BY emp_no LIMIT 1;
# what is the most common 'from date' for job titles? for staff only?
SELECT from_date, COUNT(*) FROM titles GROUP BY from_date ORDER BY COUNT(*) DESC LIMIT 1;

SELECT from_date, COUNT(*) FROM titles WHERE to_date LIKE '9999%' GROUP BY from_date ORDER BY COUNT(*) DESC LIMIT 1;
# what is the highest employee number for an engineer?
SELECT emp_no FROM titles WHERE title = 'Engineer' ORDER BY emp_no  DESC LIMIT 1;
# what are the names of the 10 most recently hired females in the company? the first 10?
SELECT CONCAT(first_name,' ',last_name), hire_date AS full_name FROM employees WHERE gender = 'F' ORDER BY hire_date DESC LIMIT 10;

SELECT CONCAT(first_name,' ',last_name), hire_date AS full_name FROM employees WHERE gender = 'F' ORDER BY hire_date LIMIT 10;
# what is the most common birthday?
SELECT birth_date, COUNT(birth_date) FROM employees GROUP BY birth_date ORDER BY COUNT(birth_date) DESC LIMIT 1;
# what is the most common female birthday? male?
SELECT birth_date, COUNT(birth_date) FROM employees WHERE gender = 'F' GROUP BY birth_date ORDER BY COUNT(birth_date) DESC LIMIT 1;

SELECT birth_date, COUNT(birth_date) FROM employees WHERE gender = 'M' GROUP BY birth_date ORDER BY COUNT(birth_date) DESC LIMIT 1;
# what is the most common hire date for female and male employees?
SELECT hire_date, COUNT(hire_date) FROM employees WHERE gender = 'F' GROUP BY hire_date ORDER BY COUNT(hire_date) DESC LIMIT 1;

SELECT hire_date, COUNT(hire_date) FROM employees WHERE gender = 'M' GROUP BY hire_date ORDER BY COUNT(hire_date) DESC LIMIT 1;
# what is the longest last name of someone born on March 8, 1952?
SELECT last_name FROM employees WHERE birth_date = '1952-03-08' ORDER BY length(last_name) DESC LIMIT 1;