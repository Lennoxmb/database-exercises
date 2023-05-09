USE employees;

#write a query that shows each department along with the name of the current manager for that department.
SELECT dept_name, CONCAT(first_name, ' ', last_name) AS manager FROM employees JOIN dept_manager USING(emp_no) JOIN departments USING(dept_no) WHERE dept_manager.to_date > NOW() ORDER BY dept_name;

#Find the name of all departments currently managed by women.
SELECT dept_name, CONCAT(first_name, ' ', last_name) AS manager FROM employees JOIN dept_manager USING(emp_no) JOIN departments USING(dept_no) WHERE dept_manager.to_date > NOW() AND gender = 'F' ORDER BY dept_name;

#find and count the current titles of employees currently working in the Customer Service department.
SELECT title, COUNT(*) FROM employees JOIN titles USING(emp_no) JOIN dept_emp USING(emp_no) JOIN departments USING(dept_no) WHERE dept_name = 'Customer Service' AND titles.to_date > NOW() AND dept_emp.to_date > NOW() GROUP BY title;

#Find the current salary of all current managers.
SELECT dept_name, CONCAT(first_name, ' ', last_name) AS manager, salary
    FROM salaries
    JOIN dept_manager USING(emp_no)
     JOIN employees e on e.emp_no = dept_manager.emp_no
     JOIN departments USING(dept_no)
WHERE dept_manager.to_date > NOW() AND salaries.to_date > NOW()
ORDER BY dept_name;

#Find the names of all current employees, their department name, and their current manager's name .
SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee, d.dept_name AS department, CONCAT(m.first_name, ' ', m.last_name) AS manager
    FROM employees e
    JOIN dept_emp de USING(emp_no)
    JOIN departments d USING(dept_no)
    JOIN dept_manager dm USING(dept_no)
    JOIN employees m ON dm.emp_no = m.emp_no
WHERE de.to_date > NOW() AND dm.to_date > NOW();