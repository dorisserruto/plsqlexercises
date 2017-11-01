DECLARE

v_fila employees%ROWTYPE;

BEGIN
SELECT * INTO v_fila
FROM employees
WHERE employee_id = 100;
DBMS_OUTPUT.PUT_LINE(v_fila.last_name);
END;
