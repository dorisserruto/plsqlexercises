CREATE OR REPLACE TRIGGER restrict_salaryDS
BEFORE INSERT OR UPDATE OF salary ON employeesDS
FOR EACH ROW

BEGIN
IF NOT (:NEW.job_id IN ('AD_PRES', 'AD_VP')) AND :NEW.salary > 15000
THEN
RAISE_APPLICATION_ERROR (-20202,'EmployeeDS cannot earn this amount');
END IF;

END;
/
UPDATE employeesDS SET salary=20000 WHERE employee_id=103;
