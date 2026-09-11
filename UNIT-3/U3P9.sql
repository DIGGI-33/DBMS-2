-- PROGRAM 9: VALUE_ERROR Exception

SET SERVEROUTPUT ON;

DECLARE
v_name VARCHAR2(5);

BEGIN

v_name := 'ABCDEFG';

DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);

EXCEPTION

WHEN VALUE_ERROR THEN
    DBMS_OUTPUT.PUT_LINE('Error: Value is too large for the variable.');

WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);

END;
/