SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees as emp LEFT JOIN
salaries as sal 
ON (emp.emp_no=sal.emp_no);

SELECT first_name, last_name, hire_date 
FROM employees WHERE hire_date 
BETWEEN '1/1/1986' AND '12/31/1986';

SELECT dm.dept_no, d.dept_no, dm.emp_no, emp.last_name, emp.first_name
FROM dept_manager AS dm INNER JOIN departments as d 
ON (dm.dept_no=d.dept_no) INNER JOIN employees 
AS emp ON (dm.emp_no=emp.emp_no);

SELECT de.dept_no, emp.emp_no, emp.last_name, emp.first_name, d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS emp
ON de.emp_no = emp.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT emp.emp_no, emp.last_name, emp.first_name
FROM employees AS emp
INNER JOIN dept_emp AS de
ON emp.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
FROM employees AS emp
INNER JOIN dept_emp AS de
ON emp.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;



