/*
                SCRIPT-3
Script which created and uese during the demonstration on YouTube video


Creator: Manish Sharma
	Website: www.RebellionRider.com
		Fastest way to reach Manish Sharma
	Twitter: @RebellionRider
	Facebook:@TheRebellionRider
	Instagram: @RebellionRider
	
	Do make sure to follow me on my social media for more such scripts and other col stuffs. 
	Thanks and have great day.

*/

SET SERVEROUTPUT ON;
DECLARE
    CURSOR exp_cur IS
    SELECT first_name FROM employees;
    
    TYPE nt_fName IS TABLE OF VARCHAR2(20);
    fname   nt_fName;
BEGIN
    OPEN exp_cur;
    LOOP
        FETCH exp_cur BULK COLLECT INTO fname;
        EXIT WHEN fname.COUNT = 0;
        FOR idx IN fname.FIRST..fname.LAST
        LOOP
            DBMS_OUTPUT.PUT_LINE (idx||' '||fname(idx) );
        END LOOP;
    END LOOP;
    CLOSE exp_cur;
END;
/
