-- Calculator application in PL/SQL
-- note: sum variable named sum1 since sum is a keyword/function?
set serveroutput on
set verify off

declare
	num1 number(10);
	num2 number(10);
	
	diff number := 0;
	prod number := 0;
	sum1 number := 0;
	div number  := 0;
	
begin
	num1 := &num1;
	num2 := &num2;
	
	diff := num1-num2;
	prod  := num1*num2;
	sum1 := num1+num2;
	div  := num1/num2;

	dbms_output.put_line('sum         = '||sum1);
	dbms_output.put_line('differrence = '||diff);
	dbms_output.put_line('product     = '||prod);
	dbms_output.put_line('division    = '||div);
end;
/
