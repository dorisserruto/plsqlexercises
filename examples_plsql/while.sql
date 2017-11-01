DECLARE

contador NUMBER:= 1;

BEGIN

WHILE contador <= 10 LOOP
DBMS_OUTPUT.PUT(contador || ' ');
contador := contador + 1;
END LOOP;

DBMS_OUTPUT.PUT_LINE('Fuera del bucle.');

END;
