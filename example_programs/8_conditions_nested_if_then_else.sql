/*
Example for nested if the else block

checking if number is positive or negative or not,
if positive also checking if number is even or odd.

*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE  
	num1 NUMBER(10);

BEGIN
	num1 := &num1;
	
	IF (num1 > 0) THEN
		dbms_output.put_line('num1 is positive');
		IF( MOD(num1, 2) = 0 ) THEN
			dbms_output.put_line('num1 is even');
		ELSE
			dbms_output.put_line('num1 is odd');
		END IF;
		
	ELSIF (num1 < 0) THEN
		dbms_output.put_line('num1 is negative');
	ELSE
		dbms_output.put_line('num1 is zero');
	END IF;
	
END;
/