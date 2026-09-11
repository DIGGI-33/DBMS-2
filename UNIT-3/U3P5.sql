-- PROGRAM 5: Cursor with User Defined Exception

SET SERVEROUTPUT ON;

-- Create EMP_BACKUP table
CREATE TABLE EMP_BACKUP AS
SELECT * FROM EMPLOYEE20
WHERE 1 = 2;

-- PL/SQL Block
DECLARE

v_deptno EMPLOYEE20.dept_no%TYPE := &enter_dept_no;

CURSOR emp_cursor IS
SELECT *
FROM EMPLOYEE20
WHERE dept_no = v_deptno;

v_count NUMBER := 0;

NO_DEPT_FOUND EXCEPTION;

BEGIN

FOR emp IN emp_cursor LOOP

INSERT INTO EMP_BACKUP
VALUES emp;

v_count := v_count + 1;

END LOOP;

IF v_count = 0 THEN
    RAISE NO_DEPT_FOUND;
END IF;

DBMS_OUTPUT.PUT_LINE(v_count || ' employee record(s) inserted into EMP_BACKUP.');

EXCEPTION

WHEN NO_DEPT_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Error: No employees found for Department No. ' || v_deptno);

WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);

END;
/