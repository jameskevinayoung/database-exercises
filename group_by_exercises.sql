USE employees;

SELECT DISTINCT title
FROM titles
GROUP BY title;

SELECT last_name
FROM employees
WHERE last_name like 'E%e'
GROUP BY last_name;


SELECT first_name, last_name
FROM employees
WHERE last_name like 'E%e'
GROUP BY last_name, first_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name like '%q%' and last_name not like '%qu%'
GROUP BY last_name;

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name like '%q%' and last_name not like '%qu%'
GROUP BY last_name
ORDER BY Count(*) desc;


SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY  gender
order by  Count(*) desC;
