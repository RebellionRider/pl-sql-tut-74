SET SERVEROUTPUT ON;
DECLARE
    CURSOR exp_cur IS
    SELECT * FROM employees;
    
    var_1 employees%ROWTYPE;
BEGIN
    OPEN exp_cur;
    LOOP
        FETCH exp_cur INTO var_1;
        EXIT WHEN exp_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(var_1.first_name);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('total number of rows fetched are: '||exp_cur%ROWCOUNT);
    CLOSE exp_cur;
END;
/