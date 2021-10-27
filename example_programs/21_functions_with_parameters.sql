-- PL/SQL Function Demo
-- function with parameters

DECLARE
	a int;
	b int;
	c int;
	
FUNCTION average(x IN INT, y IN INT)
RETURN INT
IS
	tmp int;
BEGIN
	tmp := (x + y)/2;
	return tmp;
END;

BEGIN
	a := 10;
	b := 20;
	
	c := average(a, b);
	dbms_output.put_line('average is : ' || c);
END;
/