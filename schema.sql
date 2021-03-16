Departments
-
dept_no varchar pk FK >- Dept_emp.dept_no
dept_name varchar

Dept_emp
-
dept_no varchar pk
emp_no varchar pk
from_date
to_date 

Managers
-
dept_no varchar pk fk - Departments.dept_no
emp_no varchar pk fk - Employees.emp_no
from_date date
to_date date

Titles
-
emp_no varchar pk fk - Employees.emp_no
title varchar 
from_date date
to_date date

Salaries
-
emp_no varchar pk FK >- Dept_emp.emp_no
salary int
from_date date
to_date date

Employees
-
emp_no int pk FK >- Salaries.emp_no
birth_date date
first_name varchar
last_name varchar 
gender varchar
hire_date date