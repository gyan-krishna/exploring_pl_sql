-- PL/SQL Demo Programs: Functions

-- Functions are differrent from procedueres
-- that they return values

CREATE OR REPLACE FUNCTION totalSal
RETURN INT IS
	total int := 0;
BEGIN
	SELECT SUM(salary) INTO total 
	FROM employeedb ;
	
	RETURN total;
END;
/

DECLARE 
	expense int;
BEGIN
	expense := totalSal();
	dbms_output.put_line('Total salary spent : ' || expense);
END;
/