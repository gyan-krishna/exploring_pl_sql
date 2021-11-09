-- PL/SQL Procedure demo

SET SERVEROUTPUT ON
SET VERIFY OFF

-- AS = stand alone proc
-- IN - ??
CREATE OR REPLACE PROCEDURE new_proc
AS
BEGIN
	dbms_output.put_line('Hello world');
END;
/

-- calling the porcedure
EXECUTE new_proc;

-- deleting the porcedure
DROP PROCEDURE new_proc;
