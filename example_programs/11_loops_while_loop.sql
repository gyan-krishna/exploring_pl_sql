/*
While loop example
printing numbers from 1 to 10
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
	xx NUMBER(10);
BEGIN
	xx := 1;
	WHILE (xx <= 10) LOOP
		dbms_output.put_line(xx);
		xx := xx + 1;
	END LOOP;
	
	dbms_output.put_line('end of loop!');
END;
/
