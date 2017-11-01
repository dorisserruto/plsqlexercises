DECLARE
contador NUMBER:= 1;

BEGIN

LOOP
DBMS_OUTPUT.PUT(contador || ' ');
contador := contador + 1;
EXIT WHEN contador = 11;
END LOOP;

DBMS_OUTPUT.PUT_LINE('Fuera del bucle.');

END;
