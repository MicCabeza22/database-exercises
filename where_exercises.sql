USE employees;

SELECT gender, COUNT(gender) AS 'gender_count'
FROM employees
WHERE (
  first_name = 'Irena'
  OR first_name = 'Vidya'
  OR first_name = 'Maya'
  )
GROUP BY gender;

SELECT * FROM employees WHERE (
  last_name LIKE 'E%' OR last_name LIKE '%e'
);

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY first_name, last_name;

SELECT * FROM employees WHERE (
  hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  )
AND birth_date LIKE '%%%%-12-25';

SELECT DISTINCT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;