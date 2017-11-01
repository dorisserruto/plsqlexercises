DECLARE
v_bonus NUMBER(8,2);
v_last_name employees.last_name%TYPE;
BEGIN

SELECT salary * 0.10, last_name
INTO v_bonus, v_last_name
FROM employees
WHERE employee_id = &id;

DBMS_OUTPUT.PUT_LINE(v_last_name||' tiene un bono de '||v_bonus);

END;
/


