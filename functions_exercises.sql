USE employees;

SELECT 'EMPLOYEES WITH THE LAST NAMES THAT START WITH ''E'''AS 'QUERY SELECTION';
SELECT CONCAT(first_name,' ', last_name)
FROM employees
WHERE last_name like 'E%' OR last_name like '%e'
ORDER BY emp_no desc;

SELECT emp_no, first_name, last_name, hire_date, birth_date, CONCAT('Number of days at the company: ', datediff(now(), hire_date))
FROM employees
wHERE hire_date  BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date like '%12-25';