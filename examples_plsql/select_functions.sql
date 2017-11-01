DESC employees;
--SELECT employee_id "Emp#", salary*commission_pct "Comm" FROM employees;
--SELECT employee_id "Emp#", salary*12 "Salario Anual" FROM employees;
--SELECT first_name || ' ' || last_name "Nombre Completo" FROM employees;
--SELECT DISTINCT department_id FROM employees;
--SELECT employee_id FROM employees WHERE department_id = 20;
--SELECT employee_id FROM employees WHERE commission_pct IS NULL;
--SELECT employee_id, salary FROM employees WHERE salary BETWEEN 10000 AND 20000;
--SELECT employee_id FROM employees WHERE department_id IN (20,30);
--SELECT employee_id, last_name FROM employees WHERE last_name LIKE 'K%';
--SELECT employee_id, last_name FROM employees WHERE last_name LIKE '_o%';
--SELECT employee_id, department_id FROM employees WHERE department_id NOT IN (20, 30);
--SELECT employee_id, last_name FROM employees ORDER BY last_name DESC;
--SELECT employee_id, last_name, department_id FROM employees ORDER BY department_id DESC, last_name;
--SELECT employee_id, department_id FROM employees WHERE department_id NOT IN (&v1,&v2);
--SELECT 1500*0.20 FROM dual;
--SELECT ROUND (450.68, 1) FROM dual;
--SELECT ROUND (450.68, -1) FROM dual;
--SELECT TRUNC (850.681, 1) FROM dual;
--SELECT MOD(7,4) FROM dual;
--SELECT LOWER('MAYUSC') FROM dual;
--SELECT UPPER(last_name) FROM employees;
--SELECT INITCAP(last_name) FROM employees;
--SELECT CONCAT(first_name, CONCAT(' ',last_name)) FROM employees;
--SELECT SUBSTR(first_name,1,3) FROM employees;
--SELECT first_name, SUBSTR(first_name,-3) FROM employees;
--SELECT LPAD(salary,10,'*') FROM employees;
--SELECT RPAD(salary,10,'*') FROM employees;

SELECT INSTR(last_name, 'o') FROM employees;

SELECT
job_id,
CASE job_id
WHEN 'IT_PROG' THEN (salary+(salary*0.1))
WHEN 'SA_REP' THEN (salary-(salary*0.05))
ELSE (salary+(salary*0.05)) END FORMULA,
salary
FROM employees;
