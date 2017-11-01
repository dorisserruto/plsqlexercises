DECLARE

v_empid employees.employee_id%TYPE;
v_ename employees.last_name%TYPE;

CURSOR emp_cursor IS

SELECT employee_id, last_name
FROM employees;
BEGIN

OPEN emp_cursor;

FOR i IN 1..10 LOOP
FETCH emp_cursor INTO v_empid, v_ename;
DBMS_OUTPUT.PUT_LINE (TO_CHAR(v_empid)||' '|| v_ename);

END LOOP;

CLOSE emp_cursor;

END;
