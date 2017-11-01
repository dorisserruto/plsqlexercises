CREATE TABLE employeesDS
AS
SELECT * FROM employees;

INSERT INTO employeesDS (employee_id, last_name,
first_name, email, hire_date,job_id, salary, department_id)
VALUES (300, 'Smith', 'Rob', 'RSMITH', SYSDATE,'IT_PROG', 4500, 60);

UPDATE employeesDS SET salary=20000 WHERE employee_id=103;
