-- WRITE A PL/SQL BLOCK TO CALCULATE THE SQUARE AND THE CUBE OF THE GIVEN NUMBER.

SET SERVEROUTPUT ON;

DECLARE
	n NUMBER := &n;
	square NUMBER;
	cube NUMBER;

BEGIN
	square := n * n;
	cube := n * n * n;

	DBMS_OUTPUT.PUT_LINE('SQUARE = ' || square);
	DBMS_OUTPUT.PUT_LINE('CUBE = ' || cube);
END;

/