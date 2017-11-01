CREATE OR REPLACE TRIGGER secure_empDS
BEFORE INSERT ON employeesDS
BEGIN

IF (TO_CHAR(SYSDATE,'DY') IN ('SÁB','DOM')) OR
(TO_CHAR(SYSDATE,'HH24:MI')
NOT BETWEEN '08:00' AND '14:00')

THEN RAISE_APPLICATION_ERROR (-20500,'You may
insert into EMPLOYEES table only
during business hours.');
END IF;

END;
/
INSERT INTO employeesDS (employee_id, last_name,
first_name, email, hire_date,job_id, salary, department_id)
VALUES (300, 'Smith', 'Rob', 'RSMITH', SYSDATE,'IT_PROG', 4500, 60);
