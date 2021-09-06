
SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE 
	ch char(1);
BEGIN
	ch := '&ch';
	
	CASE ch
		WHEN 'A' THEN dbms_output.put_line('entered A');
		WHEN 'B' THEN dbms_output.put_line('entered B');
		WHEN 'C' THEN dbms_output.put_line('entered C');
		ELSE dbms_output.put_line('What have you entered!?');
		END CASE;
END;
/
