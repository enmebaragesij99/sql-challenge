--List the employee number,last name, first name, sex and salary of each employee
SELECT e.emp_no,last_name,first_name,sex,salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no;

--List the first name, last name and hire date fro employees who were hired in 1986
SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date LIKE '%/1986';

--List the manager of each department-depertment number,department name,employee number,last name and first name
SELECT dm.dept_no,dept_name,dm.emp_no,last_name,first_name
FROM dept_manager AS dm
INNER JOIN departments AS d ON
dm.dept_no=d.dept_no
INNER JOIN employees AS e ON
dm.emp_no=e.emp_no
INNER JOIN titles AS t ON
e.emp_title_id=t.title_id
WHERE title_id='m0001';


--List department number for each employee-employee number,last name,first name and department name
SELECT de.dept_no,e.emp_no,last_name,first_name,dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON 
e.emp_no=de.emp_no
INNER JOIN departments AS d ON
de.dept_no=d.dept_no;


--List first name,last name and sex of each employeewhose first name is Hercules and whose last name begins with letter B
SELECT first_name,last_name,sex
FROM employees
WHERE first_name='Hercules'
AND last_name LIKE 'B%';


--List each employee in the Sales department
SELECT dept_name,e.emp_no,last_name,first_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no=de.emp_no
INNER JOIN departments AS d ON
de.dept_no=d.dept_no
WHERE dept_name='Sales';


--List each employee in the Sales and Development department
SELECT e.emp_no,last_name,first_name,dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no=de.emp_no
INNER JOIN departments AS d ON
de.dept_no=d.dept_no
WHERE dept_name='Sales'
OR dept_name='Development';


--List the frequency counts-of all the employees last name in descending order
SELECT last_name, COUNT(last_name) AS "employee count"
FROM employees
GROUP BY last_name 
ORDER BY "employee count" DESC;
