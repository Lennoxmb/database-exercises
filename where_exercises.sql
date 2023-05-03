USE employees;

SELECT * FROM employees WHERE gender = 'M' AND first_name = 'Irena' OR gender = 'M' AND first_name = 'Vidya' OR gender = 'M' AND first_name = 'Maya';
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e';
SELECT * FROM employees WHERE last_name NOT LIKE '%qu%';
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

#in terminal have to use -u root -p to get into mysql
#then use SHOW DATABASES; to see all databases

