-- PROGRAM 8: INVALID_CURSOR Exception

SET SERVEROUTPUT ON;

DECLARE
v_name EMPLOYEE20.emp_name%TYPE;

CURSOR emp_cursor IS
SELECT emp_name
FROM EMPLOYEE20;

BEGIN

OPEN emp_cursor;

FETCH emp_cursor INTO v_name;

DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);

CLOSE emp_cursor;

FETCH emp_cursor INTO v_name;

EXCEPTION

WHEN INVALID_CURSOR THEN
    DBMS_OUTPUT.PUT_LINE('Error: Invalid cursor operation.');

WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);

END;
/