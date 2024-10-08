﻿---Analysis of Historical Employee Data from Pewlett Hackard (a fictional company).

---List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employee" AS e
INNER JOIN "Salary" AS s ON e.emp_no = s.emp_no;


---List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM "Employee"
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


---List the manager of each department along with their 
---department number, department name, employee number, last name, and first name.

SELECT dm.dept_no, dm.emp_no, e.last_name, e.first_name
FROM "Dept_Mgr" AS dm
INNER JOIN "Employee" AS e ON dm.emp_no = e.emp_no;


---List the department number for each employee along with 
---that employee’s employee number, last name, first name, and department name.

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dept_Emp" AS de
INNER JOIN "Employee" AS e ON de.emp_no = e.emp_no
INNER JOIN "Department" AS d ON d.dept_no = de.dept_no;


---List first name, last name, and sex of each employee 
--whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, last_name, sex
FROM "Employee"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

---List each employee in the Sales department, including their employee number, 
--last name, and first name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dept_Emp" AS de
INNER JOIN "Employee" AS e ON de.emp_no = e.emp_no
INNER JOIN "Department" AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

---List each employee in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dept_Emp" AS de
INNER JOIN "Employee" AS e ON de.emp_no = e.emp_no
INNER JOIN "Department" AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

---List the frequency counts, in descending order, 
--of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS lname_count
FROM "Employee"
GROUP BY last_name
ORDER BY lname_count DESC;