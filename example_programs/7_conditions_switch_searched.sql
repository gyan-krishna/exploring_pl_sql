/*
searched switch construct:-

Instead of having a variable at the case 
construct, we give conditions at each when clause
*/
SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE 
	ch char(1);
BEGIN
	ch := '&ch';
	
	CASE 
		WHEN ch = 'A' THEN dbms_output.put_line('entered A');
		WHEN ch = 'B' THEN dbms_output.put_line('entered B');
		WHEN ch = 'C' THEN dbms_output.put_line('entered C');
		ELSE dbms_output.put_line('What have you entered!?');
		END CASE;
END;
/
