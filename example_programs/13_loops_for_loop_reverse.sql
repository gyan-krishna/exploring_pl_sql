/*
Example: for loop
Printing numbers from 1 to 10
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
	xx NUMBER(10);
BEGIN
	xx := 1;
	
	FOR xx in REVERSE 1 .. 10 LOOP
		dbms_output.put_line(xx);
	END LOOP;
	
	dbms_output.put_line('end of loop!');
END;
/
