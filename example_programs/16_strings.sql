-- PL/SQL Strings demo

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE 
	name varchar(20);
	text clob; 
BEGIN
	name := 'Gyan Krishna ';
	text := 'Hello world! this is a character large object!';
	
	-- Displaying the ASCII value of a character
	dbms_output.put_line( ASCII('A') );
	
	-- Displaying the Character with given ASCII value.
	dbms_output.put_line( CHR(97) );
	
	-- Concatenating two strings
	dbms_output.put_line( CONCAT(name, text) );
	
	-- Converting initial letters of each word to capitals
	dbms_output.put_line( INITCAP('gyan krishna') );
	
	-- 
	
END;
/