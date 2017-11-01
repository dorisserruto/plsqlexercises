DROP PROCEDURE query_empDS;

CREATE OR REPLACE PROCEDURE query_empDS
(p_id IN employees.employee_id%TYPE,
p_name OUT employees.last_name%TYPE,
p_salary OUT employees.salary%TYPE,
p_comm OUT employees.commission_pct%TYPE)
IS
BEGIN

SELECT last_name, salary, commission_pct
INTO p_name, p_salary, p_comm
FROM employees
WHERE employee_id = p_id;
END query_empDS;
/
SHOW ERRORS;


VARIABLE g_name VARCHAR2(25)
VARIABLE g_sal NUMBER
VARIABLE g_comm NUMBER

EXECUTE query_empDS(171, :g_name, :g_sal, :g_comm)
PRINT g_name
PRINT g_sal


SELECT *
FROM USER_SOURCE
WHERE
NAME = 'QUERY_EMPDS';
