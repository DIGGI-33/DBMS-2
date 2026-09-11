-- WRITE A PL/SQL BLOCK THAT CALCULATE THE SIMPLE INTEREST BASED ON THE GIVEN PRINCIPAL amout, rate of interest & time (number of years).

SET SERVEROUTPUT ON;
DECLARE 
 p NUMBER := &p;
 r NUMBER := &r;
 n NUMBER := &n;
 si NUMBER;
BEGIN
 si := (p*r*n) / 100;
 DBMS_OUTPUT.PUT_LINE('SIMPLE INTEREST = ' || si);
END;
/