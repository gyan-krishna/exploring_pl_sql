-- PL/SQL Demo
-- Cursors

/* 
Explicit Cursors are user defined cursors for more 
control over the context area
*/

SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE 
	id employeedb.eid%type;
	ename employeedb.name%type;
	esalary employeedb.salary%type;
	
	CURSOR emp_cur IS
		SELECT eid, name, salary FROM employeedb;
		
BEGIN
	OPEN emp_cur;
	LOOP
		FETCH emp_cur INTO id, ename, esalary;
		EXIT WHEN emp_cur%NOTFOUND;
		dbms_output.put_line(id || CHR(9) || ename || CHR(9) || esalary);
	END LOOP;
	CLOSE emp_cur;
END;
/