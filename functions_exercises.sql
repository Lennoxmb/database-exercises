USE employees;


SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;
SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;
# SELECT * FROM employees WHERE last_name NOT LIKE '%qu%';
# SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE birth_date LIKE '%-12-25';

SELECT * FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%';

SELECT * FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%' ORDER BY hire_date DESC;

SELECT DATEDIFF(NOW(), hire_date)/365 FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%';

#Find all employees hired in the 90s and born on Christmas