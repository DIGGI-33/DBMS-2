-- PROGRAM 4: Employee Salary by Age

SET SERVEROUTPUT ON;

DECLARE
v_age    EMPLOYEE20.age%TYPE := 50;
v_name   EMPLOYEE20.emp_name%TYPE;
v_salary EMPLOYEE20.basic_salary%TYPE;

BEGIN

SELECT emp_name, basic_salary
INTO v_name, v_salary
FROM EMPLOYEE20
WHERE age = v_age;

DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
DBMS_OUTPUT.PUT_LINE('Age          : ' || v_age);
DBMS_OUTPUT.PUT_LINE('Basic Salary : ' || v_salary);

EXCEPTION

WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Error: No employee found whose age is ' || v_age || ' years.');

WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Error: Multiple employees found whose age is ' || v_age || ' years.');

WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);

END;
/