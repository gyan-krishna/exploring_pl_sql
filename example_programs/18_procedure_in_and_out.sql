-- PL/SQL Procedures demo 2
-- IN and OUT Modes


DECLARE
	a int;
	b int;
	c int;

-- defining proceduere
/* 
IN parameter 		- lets pass value to subprogram
					- cannot be asigned a value
					- passed by refrence
				
OUT parameter 		- acts like a variable
					- can change value and refer to it
					- actual parameter must be a variable
IN OUT parameter	- sends value to sub porgram
					- and used to return a value to caller
					- actual parameter must be a variable and passed by refrence
*/

PROCEDURE findMin(x IN int, y IN int, z OUT INT) IS
BEGIN
	IF x < y THEN
		z:=x;
	ELSE
		z:=y;
	END IF;
END;

BEGIN
	a:=5;
	b:=1;
	
	findMin(a,b,c);
	dbms_output.put_line('min val is : ' || c);
END;
/
