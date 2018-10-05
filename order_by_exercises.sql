USE employees;
truncate employees;
SELECT 'EMPLOYEES WITH FIRST NAMES IRENA, VIDYA, AND MAYA' AS 'QUERY SELECTION';
SELECT DISTINCT emp_no, first_name, last_name, gender
FROM employees
-- WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first
WHERE gender = 'M'
    AND first_name IN ('Irena', 'Vidya', 'Maya')
--     ORDER BY first_name, last_name ASC;
    ORDER BY last_name, first_name ASC;



SELECT 'EMPLOYEES WITH THE LAST NAMES THAT START WITH ''E'''AS 'QUERY SELECTION';
SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE last_name like 'E%' OR last_name like '%e'
    ORDER BY emp_no desc ;


SELECT 'EMPLOYEES HIRED IN THE 1990S' AS 'QUERY SELECTION';
SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
wHERE hire_date  BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date like '%12-25';


SELECT 'EMPLOYEES BORN ON CHRISTMAS' AS 'QUERY SELECTION';
SELECT emp_no, first_name, last_name,birth_date,hire_date
FROM employees
WHERE birth_date like '%12-25'
ORDER BY birth_date, hire_date desc


SELECT 'EMPLOYESS WITH A ''Q'' IN THEIR LAST NAME' AS 'QUERY SELECTION'
SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' and last_name not like '%qu%';