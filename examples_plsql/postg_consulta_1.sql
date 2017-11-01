--SELECT 
--	first_name||' '||last_name "Nombre",SUBSTR(first_name,1,1)||SUBSTR(last_name,1,1) "Iniciales"
--FROM
--	employees;

--SELECT date 'now()' + integer '7';
--SELECT current_date + interval '1 MONTH';
--SELECT current_date + interval '2 WEEK';
--SELECT current_date - interval '2 MINUTE';

--SELECT
--	TO_CHAR(hire_date,'Day, dd "de" Month "del" YY')
--FROM
--	employees;

--SELECT AGE(CURRENT_DATE,'03/01/1986');


--SELECT 
--	EXTRACT('MONTH' FROM hire_date)
--FROM
--	employees;

-- EMPLEADOS CUYO MES DE CONTRATACION SEA PAR
/*SELECT 
	last_name, hire_date, EXTRACT('MONTH' FROM hire_date)
FROM
	employees
WHERE
	MOD(CAST(EXTRACT('MONTH' FROM hire_date) AS NUMERIC), 2) = 0;*/

