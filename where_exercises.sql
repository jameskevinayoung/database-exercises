USE employees;
truncate employees;
SELECT 'EMPLOYEES WITH FIRST NAMES IRENA, VIDYA, AND MAYA' AS 'QUERY SELECTION';
SELECT DISTINCT emp_no, first_name, last_name FROM employees where first_name IN ('Irena', 'Vidya', 'Maya');

SELECT 'EMPLOYEES WITH THE LAST NAMES THAT START WITH ''E''' AS 'QUERY SELECTION';
SELECT DISTINCT emp_no, first_name, last_name FROM employees where last_name like 'E%';

SELECT 'EMPLOYEES HIRED IN THE 1990S' AS 'QUERY SELECTION';
SELECT emp_no, first_name, last_name FROM employees where hire_date BETWEEN '1990-01-01' AND '1999-12-31';


SELECT 'EMPLOYEES BORN ON CHRISTMAS' AS 'QUERY SELECTION';
SELECT DISTINCT emp_no, first_name, last_name FROM employees where birth_date like '%12-25';


SELECT 'EMPLOYESS WITH A ''Q'' IN THEIR LAST NAME' AS 'QUERY SELECION';
SELECT DISTINCT emp_no, first_name, last_name FROM employees where last_name LIKE '%q%';
