DECLARE

e_invalid_department EXCEPTION;
v_dep employees.department_id%TYPE := 1;
v_dep_name departments.department_name%TYPE := 'ABC';

BEGIN

UPDATE departments
SET department_name = 'v_dep_name'
WHERE department_id = v_dep;

IF SQL%NOTFOUND THEN
RAISE e_invalid_department;
END IF;

COMMIT;

EXCEPTION

WHEN e_invalid_department THEN
DBMS_OUTPUT.PUT_LINE('No existe el depto.');
END;
