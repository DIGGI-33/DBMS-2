-- PROGRAM 10: DUP_VAL_ON_INDEX Exception

SET SERVEROUTPUT ON;

DECLARE
v_emp_id   EMPLOYEE20.emp_id%TYPE := 101;
v_name     EMPLOYEE20.emp_name%TYPE := 'John';

BEGIN

INSERT INTO EMPLOYEE20 (emp_id, emp_name)
VALUES (v_emp_id, v_name);

DBMS_OUTPUT.PUT_LINE('Employee record inserted successfully.');

EXCEPTION

WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE('Error: Employee ID ' || v_emp_id || ' already exists.');

WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);

END;
/