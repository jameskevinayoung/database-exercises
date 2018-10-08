USE employees;
SELECT d.dept_name as Department, CONCAT(e.first_name, ' ', e.last_name) AS Manager
FROM employees as e
       left join dept_emp as de
         ON de.emp_no = e.emp_no
       left JOIN departments as d
         ON d.dept_no = de.dept_no
WHERE de.to_date > now() and e.gender = 'F';

select T.title, count(T.title) as 'Count'
from titles as T
join dept_emp de on de.emp_no = T.emp_no
join departments d on d.dept_no = de.dept_no
where T.to_date > now() AND d.dept_name = 'Customer Service'
group by T.title;

--class
select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from departments AS d
join dept_manager AS dm on dm.dept_no = d.dept_no
join employees e on dm.emp_no = e.emp_no
where dm.to_date > now() and e.gender = 'F'
order by d.dept_name;

select t.title, count(t.title) as 'Count'
from titles as t
join dept_emp de on de.emp_no = t.emp_no
join departments d on d.dept_no = de.dept_no
where t.to_date > now() And de.to_date > now() and d.dept_name = 'Customer Service'
group by t.title;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager', s.salary as Salary
from departments AS d
join dept_manager AS dm on dm.dept_no = d.dept_no
join employees e on dm.emp_no = e.emp_no
join salaries s on e.emp_no = s.emp_no
where dm.to_date > now()
and s.to_date > now()
order by d.dept_name;


