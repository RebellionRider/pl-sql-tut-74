/*
								SCRIPT-1
								
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
	This script will show you how to use bulk collect clause with fetch into statement. This code
	will execute successfully but it won’t show you anything as we have not given any output statement in this entire code. 
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
        EXIT WHEN fname.COUNT=0;
        
    END LOOP;
    CLOSE exp_cur;
END;
/
