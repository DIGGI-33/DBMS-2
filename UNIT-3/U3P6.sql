-- PROGRAM 6: NO_DATA_FOUND Exception

SET SERVEROUTPUT ON;

DECLARE
v_emp_id   EMPLOYEE20.emp_id%TYPE := &enter_employee_id;
v_name     EMPLOYEE20.emp_name%TYPE;
v_salary   EMPLOYEE20.basic_salary%TYPE;

BEGIN

SELECT emp_name, basic_salary
INTO v_name, v_salary
FROM EMPLOYEE20
WHERE emp_id = v_emp_id;

DBMS_OUTPUT.PUT_LINE('Employee ID   : ' || v_emp_id);
DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_name);
DBMS_OUTPUT.PUT_LINE('Basic Salary  : ' || v_salary);

EXCEPTION

WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Error: No employee found with Employee ID ' || v_emp_id);

WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);

END;
/