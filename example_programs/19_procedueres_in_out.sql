-- PL/SQL Procedueres Demo 3
-- IN OUT Parameters

SET VERIFY OFF
SET SERVEROUTPUT ON

DECLARE 
	a int;

PROCEDURE square(x IN OUT INT) IS
BEGIN
	x:=x*x;
END;

BEGIN
	a := 3;
	square(a);
	dbms_output.put_line('square is : ' || a);
END;
/