USE employees;

SELECT DISTINCT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM (departments AS d, employees AS e)
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN departments
    ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;