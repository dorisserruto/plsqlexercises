DECLARE

v_last_name employees.last_name%TYPE;
v_mgr NUMBER;

BEGIN

SELECT last_name  INTO v_last_name
FROM employees WHERE employee_id=110;

IF UPPER(v_last_name) = 'KING' THEN
v_mgr := 102;
DBMS_OUTPUT.PUT_LINE(v_mgr);
ELSE
DBMS_OUTPUT.PUT_LINE('El empleado no existe.');
END IF;

END;
