/*
	!! NEEDS TO BE TESTED !!
	continue statement example
	not working in 10g 
	continue was introduced in oracle 11g
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE 
	x NUMBER(10);

BEGIN
	FOR x IN 1 .. 5 LOOP
		IF (x = 2) THEN
			CONTINUE;
		END IF;
		dbms_output.put_line(x);
	END LOOP;
END;
/