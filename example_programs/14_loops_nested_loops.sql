/*
Nested for loops example!
printing a pattern
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE 
	r NUMBER(10);
	c NUMBER(10);

BEGIN
	FOR r IN 1 .. 5 LOOP
		FOR c in 1 .. r LOOP
			dbms_output.put('*');
		END LOOP;
		dbms_output.put_line('');
	END LOOP;
END;
/