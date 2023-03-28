-- DATA ANALYSIS, List the employee number, last name, first name, sex, and salary of each employee
SELECT emp.emp_no, last_name, first_name, sex, salary
FROM employees AS emp
JOIN salaries AS sal
	ON emp.emp_no = sal.emp_no
;

-- DATA ANALYSIS, List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
;

-- DATA ANALYSIS, List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name
SELECT deptm.dept_no, dept_name, emp.emp_no, last_name, first_name
FROM dept_manager AS deptm
JOIN departments AS dept
	ON deptm.dept_no = dept.dept_no
JOIN employees AS emp
	ON deptm.emp_no = emp.emp_no
;

-- DATA ANALYSIS, List the department number for each employee along with that employee’s employee number, last name, first name, 
-- and department name. 
SELECT emp.emp_no, last_name, first_name, dept_name
FROM employees AS emp
JOIN dept_emp AS deptemp
	ON emp.emp_no = deptemp.emp_no
JOIN departments AS dept
	ON deptemp.dept_no = dept.dept_no
;

-- DATA ANALYSIS, List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B. 
SELECT first_name, last_name, sex
FROM employees AS emp
WHERE first_name ~* 'Hercules' AND last_name ~* '^b'
;

-- DATA ANALYSIS, List each employee in the Sales department, including their employee number, last name, and first name
SELECT emp.emp_no, last_name, first_name, dept_name
FROM employees AS emp
JOIN dept_emp AS deptemp
	ON emp.emp_no = deptemp.emp_no
JOIN departments AS dept
	ON deptemp.dept_no = dept.dept_no
WHERE dept_name ~* 'Sales'
;

-- DATA ANALYSIS, List each employee in the Sales and Development departments, including their employee number, last name, first name, 
-- and department name.
SELECT emp.emp_no, last_name, first_name, dept_name
FROM employees AS emp
JOIN dept_emp AS deptemp
	ON emp.emp_no = deptemp.emp_no
JOIN departments AS dept
	ON deptemp.dept_no = dept.dept_no
WHERE dept_name ~* 'Sales' OR dept_name ~* 'Development'
;	

-- DATA ANALYSIS, List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT (*) AS share_last_name
FROM employees
GROUP BY last_name
ORDER BY share_last_name DESC
;


	


