CREATE TABLE employeesDS (
employee_id NUMBER(6) NOT NULL PRIMARY KEY,
first_name VARCHAR2(20) NOT NULL,
last_name VARCHAR(25) NOT NULL,
hire_date DATE NOT NULL,
salary NUMBER(8,2) NOT NULL CHECK(salary > 0),
department_id NUMBER(4) CONSTRAINT fk_employees_department_idds REFERENCES departments(department_id),
job_id VARCHAR2(10) NOT NULL,
CONSTRAINT fk_employees_job_idds FOREIGN KEY(job_id) REFERENCES jobs(job_id)
)

--ALTER TABLE employeesDS
--ADD email VARCHAR2(50);

--ALTER TABLE employeesDS
--MODIFY email VARCHAR2(40);

--ALTER TABLE employeesDS
--DROP COLUMN email;

--ALTER TABLE employeesDS
--ADD commission_pct NUMBER(2,2);

--ALTER TABLE employeesDS
--ADD CONSTRAINT ck_employees_commpct CHECK (commission_pct >0 --AND commission_pct <= 1);

--ALTER TABLE employeesDS
--ADD manager_id NUMBER(6);

--ALTER TABLE employeesDS
--ADD CONSTRAINT fk_employees_manager_idds FOREIGN --KEY(manager_id) REFERENCES employeesDS(employee_id);

DESC employeesDS;

--SELECT *
--FROM user_constraints
--WHERE TABLE_NAME = 'EMPLOYEESDS';

-- LOS OBJETOS EN ORACLE SON TRATADOS CON MAYUSCULAS
SELECT *
FROM user_cons_columns
WHERE TABLE_NAME = 'EMPLOYEESDS';

--INSERT INTO employeesDS
--(employee_id, first_name,last_name, salary, hire_date,job_id)
--VALUES
--(2,'Josue','Perez',1200,'12-ENE-1987','IT_PROG');

--UPDATE employeesDS
--SET department_id = 30
--WHERE employee_id = 1;

--DELETE FROM employeesDS
WHERE employee_id = 2;

SELECT *
FROM employeesDS
