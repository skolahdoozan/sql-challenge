-- CREATING TABLES IN SQL

CREATE TABLE departments (
	dept_no VARCHAR(50) primary key,
	dept_name VARCHAR(50)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR (50),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(50),
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title VARCHAR(50),
	birth_date DATE,
	first_name VARCHAR (50),
	last_name VARCHAR(50),
	sex VARCHAR(50),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE salaries(
	emp_no INTEGER,
	salary MONEY,	
	PRIMARY KEY (emp_no)
);

CREATE TABLE titles(
	title_id VARCHAR (50) primary key,
	title VARCHAR(50)
);
