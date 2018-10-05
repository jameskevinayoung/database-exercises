USE employees;

SELECT DISTINCT last_name
FROM employees
order by last_name desc
LIMIT 10;

SELECT emp_no, first_name, last_name,birth_date,hire_date
FROM employees
WHERE birth_date like '%12-25'
ORDER BY birth_date, hire_date desc
LIMIT 5 OFFSET 30;