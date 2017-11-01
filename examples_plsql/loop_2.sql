DECLARE

CURSOR emp_cursor IS

SELECT last_name,department_id
FROM employees
WHERE department_id = 80;

BEGIN

FOR emp_record IN emp_cursor LOOP
DBMS_OUTPUT.PUT_LINE ('Employee ' || emp_record.last_name|| ' trabaja en Sales ');
END LOOP;

END ;
