/*
EXAMPLE OF BASIC LOOPS
Printing numbers from 1 to 10
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
	xx NUMBER(10);
BEGIN
	xx := 1;
	LOOP
		dbms_output.put_line(xx);
		xx := xx + 1;
		IF (xx > 10) THEN
			exit;
		END IF;
	END LOOP;
	
	dbms_output.put_line('end of loop!');
END;
/
