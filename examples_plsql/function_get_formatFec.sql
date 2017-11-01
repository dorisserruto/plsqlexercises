CREATE OR REPLACE FUNCTION get_FormatFecC
(p_id IN employees.employee_id%TYPE)
RETURN VARCHAR2
IS
v_fecha VARCHAR2(70);
BEGIN
SELECT TO_CHAR(hire_date,'fmDay DD "de" MON"-"YYYY')
INTO v_fecha
FROM employees
WHERE employee_id = p_id;
RETURN v_fecha;
END get_FormatFecC;
/
SHOW ERRORS;

SELECT get_FormatFecC(employee_id)
FROM employees;


