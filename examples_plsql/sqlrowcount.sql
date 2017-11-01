BEGIN

UPDATE employeesDSR
SET salary = salary + (salary*0.1)
WHERE
(department_id = 20);
DBMS_OUTPUT.PUT_LINE('Filas modificadas:' || SQL%ROWCOUNT);

END;
