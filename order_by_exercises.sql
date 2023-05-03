USE employees;

SHOW TABLES;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;
SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;
# SELECT * FROM employees WHERE last_name NOT LIKE '%qu%';
# SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';



#Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh.