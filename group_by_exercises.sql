USE employees;

SELECT DISTINCT title FROM employees.titles;
# In your script, use DISTINCT to find the unique titles in the titles table.

SELECT last_name FROM employees WHERE last_name LIKE 'e%e' GROUP BY last_name;
#Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'e%e';

SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

SELECT last_name, COUNT(last_name) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

SELECT gender, COUNT(first_name) FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;