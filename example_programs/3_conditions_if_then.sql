SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE 
	num1 NUMBER(10);
	num2 NUMBER(10);
	
BEGIN 
	num1 := &num1;
	num2 := &num2;
	
	-- if then statement:
	IF (num1 > num2) THEN
		dbms_output.put_line('num1 is greater');
	END IF;
END;
/