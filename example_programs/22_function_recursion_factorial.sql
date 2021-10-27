-- PL/SQL Demo
-- Recursive functions
SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE 
	n int;
	f int;

FUNCTION fact(x IN INT)
RETURN INT IS
BEGIN
	IF x = 0 THEN
		RETURN 1;
	ELSE
		RETURN x * fact(x-1);
	END IF;
END;

BEGIN
	n := 5;
	f := fact(n);
	dbms_output.put_line('Factorial = ' || f);
END;
/
	