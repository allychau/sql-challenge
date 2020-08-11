-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE to_char(hire_date,'YYYY-MM-DD') LIKE '1986%';

-- 3. List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name.
SELECT d.dept_no, dept_name,e.emp_no,last_name,first_name
from department_manager AS dm
INNER JOIN employees  AS e ON dm.emp_no = e.emp_no
INNer JOIN departments AS d ON dm.dept_no = d.dept_no

-- 4. List the department of each employee with the following information: employee number, last name, first name,
-- and department name.
SELECT e.emp_no, last_name,first_name, dept_name
from department_employees AS de
INNER JOIN departments AS d ON d.dept_no = de.dept_no
INNER JOIN employees AS e ON de.emp_no = e.emp_no

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin 
-- with "B."
SELECT first_name,last_name, sex
from employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and
-- department name.
SELECT de.emp_no, last_name,first_name,dept_name
FROM employees as e
INNER JOIN department_employees AS de ON e.emp_no = de.emp_no
INNER JOIN departments as d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, 
-- first name, and department name.
SELECT de.emp_no, last_name,first_name,dept_name
FROM employees as e
INNER JOIN department_employees AS de ON e.emp_no = de.emp_no
INNER JOIN departments as d ON d.dept_no = de.dept_no
WHERE d.dept_name IN ('Sales','Development')

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each
-- last name.
SELECT last_name, count(last_name) as "frequency"
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC

