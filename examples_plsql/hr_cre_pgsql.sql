
CREATE TABLE regions
    ( region_id      NUMERIC(6) NOT NULL  PRIMARY KEY
    , region_name    VARCHAR(25) 
    );

CREATE UNIQUE INDEX reg_id_pk
ON regions (region_id);



CREATE TABLE countries 
    ( country_id      CHAR(2) NOT NULL PRIMARY KEY
    , country_name    VARCHAR(40) 
    , region_id       NUMERIC(6) 
    ); 

ALTER TABLE countries
ADD CONSTRAINT countr_reg_fk
        	 FOREIGN KEY (region_id)
          	  REFERENCES regions(region_id) 
    ;


CREATE TABLE locations
    ( location_id    NUMERIC(4) PRIMARY KEY
    , street_address VARCHAR(40)
    , postal_code    VARCHAR(12)
    , city       VARCHAR(30) NOT NULL
    , state_province VARCHAR(25)
    , country_id     CHAR(2)
    ) ;

CREATE UNIQUE INDEX loc_id_pk
ON locations (location_id) ;


ALTER TABLE locations
ADD CONSTRAINT loc_c_id_fk FOREIGN KEY (country_id) REFERENCES countries(country_id);



CREATE TABLE departments
    ( department_id    NUMERIC(4) PRIMARY KEY
    , department_name  VARCHAR(30) NOT NULL
    , manager_id       NUMERIC(6)
    , location_id      NUMERIC(4)
    ) ;

CREATE UNIQUE INDEX dept_id_pk
ON departments (department_id) ;


ALTER TABLE departments
ADD  CONSTRAINT dept_loc_fk FOREIGN KEY (location_id)
        	  REFERENCES locations (location_id);


CREATE TABLE jobs
    ( job_id         VARCHAR(10) PRIMARY KEY
    , job_title      VARCHAR(35) NOT NULL
    , min_salary     NUMERIC(6)
    , max_salary     NUMERIC(6)
    ) ;

CREATE UNIQUE INDEX job_id_pk 
ON jobs (job_id) ;



CREATE TABLE employees
    ( employee_id    NUMERIC(6) PRIMARY KEY
    , first_name     VARCHAR(20)
    , last_name      VARCHAR(25) NOT NULL
    , email          VARCHAR(25) NOT NULL
    , phone_number   VARCHAR(20)
    , hire_date      DATE NOT NULL
    , job_id         VARCHAR(10) NOT NULL
    , salary         NUMERIC(8,2)
    , commission_pct NUMERIC(2,2)
    , manager_id     NUMERIC(6)
    , department_id  NUMERIC(4)
    , CONSTRAINT     emp_salary_min CHECK (salary > 0) 
    , CONSTRAINT     emp_email_uk UNIQUE (email)
    ) ;

CREATE UNIQUE INDEX emp_emp_id_pk
ON employees (employee_id) ;

ALTER TABLE employees
ADD CONSTRAINT     emp_dept_fk FOREIGN KEY (department_id)
                      REFERENCES departments;
ALTER TABLE employees
ADD CONSTRAINT     emp_job_fk FOREIGN KEY (job_id)
                      REFERENCES jobs (job_id);
ALTER TABLE employees
ADD CONSTRAINT     emp_manager_fk FOREIGN KEY (manager_id)
                      REFERENCES employees;

ALTER TABLE departments
ADD CONSTRAINT dept_mgr_fk FOREIGN KEY (manager_id)
     	  REFERENCES employees (employee_id);



CREATE TABLE job_history
    ( employee_id   NUMERIC(6) NOT NULL
    , start_date    DATE NOT NULL
    , end_date      DATE NOT NULL
    , job_id        VARCHAR(10) NOT NULL
    , department_id NUMERIC(4)
    , CONSTRAINT    jhist_date_interval
                    CHECK (end_date > start_date)
    , PRIMARY KEY (employee_id, start_date)
    ) ;

CREATE UNIQUE INDEX jhist_emp_id_st_date_pk 
ON job_history (employee_id, start_date) ;


ALTER TABLE job_history
ADD CONSTRAINT     jhist_job_fk
                     FOREIGN KEY (job_id)
                     REFERENCES jobs;
ALTER TABLE job_history
ADD CONSTRAINT     jhist_emp_fk
                     FOREIGN KEY (employee_id)
                     REFERENCES employees;
ALTER TABLE job_history
ADD CONSTRAINT     jhist_dept_fk
                     FOREIGN KEY (department_id)
                     REFERENCES departments;

