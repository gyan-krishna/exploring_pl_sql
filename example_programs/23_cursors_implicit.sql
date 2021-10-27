-- PL/SQL Demo
-- Cursors

/* 
cursor is a pointer to a memory area 

there are two types of cursors:
1. implicit cursors - automatically created by oracle
2. explicit cursors

Implict Cursors are as follows:-
1. %FOUND - 	Returns TRUE if an INSERT, UPDATE, or DELETE 
				statement affected one or more rows or a SELECT 
				INTO statement returned one or more rows.
				Otherwise, it returns FALSE.
			
2. %NOTFOUND - 	The logical opposite of %FOUND.

3. %ISOPEN 	- 	Always returns FALSE for implicit cursors, 
				because Oracle closes the SQL cursor automatically 
				after executing its associated SQL statement.

4. %ROWCOUNT - 	Returns the number of rows affected by an INSERT, 
				UPDATE, or DELETE statement, or returned by a 
				SELECT INTO statement.
*/

SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE	
	n int;
BEGIN
	UPDATE employeedb SET salary = salary + 1000;
	if sql%NOTFOUND THEN
		dbms_output.put_line('no records updated');
	ELSE
		n := sql%ROWCOUNT;
		dbms_output.put_line(n || ' rows modified');
	END IF;
END;
/


























