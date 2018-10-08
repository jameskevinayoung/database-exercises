USE employees;

--number 1

select first_name, last_name
from employees AS E
where e.hire_date in(
    select hire_date
    from employees
    where emp_no = 101010
);

--number 2

select title
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
    )
group by title;

--number 3

select first_name, last_name
from employees
where emp_no IN(
    select emp_no
    from dept_manager
    where to_date > now() and gender like 'F'
    );

--Bonus 1

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

select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from salaries
    where salary = 158220
    );