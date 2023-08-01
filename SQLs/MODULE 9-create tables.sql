--Drop Tables
DROP TABLE salaries;
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE employees;
DROP TABLE titles;
DROP TABLE departments;

--Create departments table
CREATE TABLE departments(
	dept_no VARCHAR(5) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(20) 
);


--Create titles table
CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR(20)
	);

--Create employees table
CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date VARCHAR(15),
	first_name VARCHAR(15),
	last_name VARCHAR(20),
	sex VARCHAR(2),
	hire_date VARCHAR(15),
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
	);


--Create dept_emp table
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
	);
	

--Create dept_manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
	);
	
	

--Create salaries table
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
	);
	

	







