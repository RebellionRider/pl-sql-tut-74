/*
							SCRIPT-2
	
	Script from PL/SQL tutorial 74 on Bulk Collect with FETCH-INTO clause in Oracle Database
	Creator: Manish Sharma
	Website: www.RebellionRider.com
		Fastest way to reach Manish Sharma
	Twitter: @RebellionRider
	Facebook:@TheRebellionRider
	Instagram: @RebellionRider
	
	Do make sure to follow me on my social media for more such scripts and other col stuffs. 
	Thanks and have great day.
*/
/*
	Here is the revised PL/SQL program on Bulk Collect clause with FETCH-INTO statement. In this code we have a nested loop
 The outer loop withh fetch and store the data into the specified destination. While the inner loop will display 
 the data back to the user.
*/

SET SERVEROUTPUT ON;
DECLARE
    CURSOR exp_cur IS
    SELECT first_name FROM employees;
    
    TYPE nt_fName   IS TABLE OF VARCHAR2(20);
    fname   nt_fName;
BEGIN
    OPEN exp_cur;
    LOOP
        FETCH exp_cur BULK COLLECT INTO fname;
        EXIT WHEN fname.count=0;
        --Print data
        FOR idx IN fname.FIRST.. fname.LAST
        LOOP
            DBMS_OUTPUT.PUT_LINE(idx||' '||fname(idx) );
        END LOOP;
        
    END LOOP;
    CLOSE exp_cur;
END;
/
