BEGIN
FOR contador IN REVERSE 1..10 LOOP
DBMS_OUTPUT.PUT(contador || ' ');
END LOOP;
DBMS_OUTPUT.PUT_LINE('Fuera del bucle.');
END;


