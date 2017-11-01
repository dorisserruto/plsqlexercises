--SELECT COUNT(*) FROM employees;
--SELECT SUM(salary) FROM employees;
--SELECT AVG(salary) FROM employees;
--SELECT MIN(salary), MAX(salary) FROM employees;

--SELECT department_id, COUNT(*) 
--FROM employees
--GROUP BY department_id;

--SELECT department_id, job_id, COUNT(*), MAX(salary)
--FROM employees
--GROUP BY department_id, job_id
--ORDER BY department_id;

--SELECT department_id, MAX(salary)
--FROM employees
--GROUP BY department_id
--HAVING MAX(salary) > 7000
--ORDER BY department_id;

--SELECT employee_id, department_name
--FROM employees e, departments d
--WHERE 
--e.department_id = d.department_id;

--SELECT employee_id, department_name
--FROM employees e 
--INNER JOIN departments d ON (e.department_id = d.department_id);

--SELECT * FROM employees WHERE department_id IS NULL;

--SELECT employee_id, department_name
--FROM employees e 
--LEFT JOIN departments d ON (e.department_id = d.department_id);
-- La tabla de la IZQUIERDA (employees) puede tener valores nulos al momento de la condicion

--SELECT employee_id, department_name
--FROM  departments d
--RIGHT JOIN employees e ON (e.department_id = d.department_id);
-- La tabla de la DERECHA (employees) puede tener valores nulos al momento de la condicion

--SELECT * 
--FROM employees 
--WHERE 
--salary = (SELECT MAX(salary) FROM employees);

SELECT * 
FROM employees 
WHERE 
salary IN (SELECT MAX(salary) FROM employees GROUP BY department_id);




