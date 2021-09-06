set serveroutput on
set verify off

declare
	-- Numeric data types:
	num1 INT(20); 			-- signed 32 bit integer
	num2 NUMBER(10);		-- fixed point/ floating point number
	num3 FLOAT;		 		-- single precision number
	num4 DOUBLE PRECISION;			-- double precision number
	
	-- Character data types:
	chr1 CHAR(10);		 	-- fixed length character 
	chr2 VARCHAR2(10);   	-- variable length character

	-- Boolean data types:
	bool1 BOOLEAN; 			-- boolean value, TRUE/FALSE/NULL
	
	-- Datetime data types:
	date_time DATE;			-- date data types
	
	/* Date has following fields:-
	
	 YEAR; 				-- years  b/w -4712 and  9999
	 MONTH; 			-- month  b/w   01  and   12
	 DAY; 				-- day    b/w   01  and   31
	 HOUR;				-- hour   b/w   00  and   23
	 MINUTE;			-- minute b/w	00  and   59
	 SECOND;			-- second b/w 	00  and	  59
	
	 TIMEZONE_HOUR; 	-- hour   b/w  -12  and   14
	 TIMEZONE_MINUTE; 	-- minute b/w  -00  and   59
	 TIMEZONE_REGION; 	-- for valid values check V$TIMEZONE_NAMES
	 TIMEZONE_ABBR;		-- for valid values check V$TIMEZONE_NAMES */
	
	-- User defined data types example
	
	SUBTYPE SMALL_INT IS NUMBER(10);
	num5 SMALL_INT;
	
BEGIN
	dbms_output.put_line('Data types demo');
end;
/