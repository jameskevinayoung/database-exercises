USE employees;

--number 1

--Find all the employees with the same hire date as employee 101010 using a sub-query. 69 Rows

select first_name, last_name
from employees AS E
where e.hire_date in(
    select hire_date
    from employees
    where emp_no = 101010
);

--number 2

--Find all the titles held by all employees with the first name Aamod. 314 total titles, 6 unique titles

select title
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
    )
group by title;

--number 3

--Find all the current department managers that are female.

select first_name, last_name
from employees
where emp_no IN(
    select emp_no
    from dept_manager
    where to_date > now() and gender like 'F'
    );

--Bonus 1

--Find all the department names that currently have female managers.

select dept_name
from departments
where dept_no in(
  select dept_no
  from dept_manager
  where emp_no in (
    select emp_no
    from employees
    where to_date > now() and gender like 'F'
    )
  );

--Bonus 2

--Find the first and last name of the employee with the highest salary.


select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from salaries
    where salary = 158220
    );