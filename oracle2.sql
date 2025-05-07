-- this is a file commannds in sql
set PAGESIZE 45  --- maximum line of number per pag default is 24
SET LINESIZE 45 -- maximum number of charecter per line defult is 80
SET PAUSE ON    --set system  to pause after each page
SET PAUSE 'PRESS ANY KEY TO CONTINU'
TTITLE  CENTER '[CUSTOMER REPORT]'  -- set each title for a page
BTITLE '[END OD THE REPORT]'    -- set bottom title for a page
COLUMN CONTACTNUMBER FORMET AS TRUNC    -- this is type for column format
SELECT * FROM CUSTOMER
TTITLE OFF
BTITLE OFF
CLEAR COLUMN
SET PAGESIZE 45
SET LINESIZE 45
SET PAUSE OFF



-- this is a new file report for oracle sql commands
spool G:\PATH_OF_SPACE
set page size 34
set linesize 45
set pause on 
set pause 'press any key to contine'


-- this is a pl sql in oracle

SET SERVEROUTPUT ON     -- THIS IS USE FOR SEE A OUTPUT IN A TERMINAL OF THE COMMANDS
PROMPT ENTER COLUMN_NMAE number -- THIS IS USE FOR SHOW MESSAGE IN A TERMINAL
ACCEPT n        -- THIS IS USE FOR STORE VALUE WHICH ENTER THE USER

DECLARE
NAME EMPLOYE.NAME&TYPE;     -- THIS IS USE FOR SAME TYPE OF THE REFERENCES TABLE
DEPARTMENT EMPLOYE.DEPARTMENT&TYPE;
LOCATION EMPLOYE.LOCATION&TYPE;

BEGIN
SELECT ENAME, DPTNAME, LOCATION INTO NAME ,DEPARTMENT,  FROM EMPLOYE WHERE EID=&N;  -- THIS IS USE FOR EXTRACT DATA FROM REFERENCES TABLE
DBMS_OUTPUT.PUT_LINE ('NMAEM    :'|| NAME);     -- THIS IS USE FOR SHOW OUTPUT OF THE PROGRAM
DBMS_OUTPUT.PUT_LINE ('DEPARTNMAE :'|| DEPARTMENT);
DBMS_OUTPUT.PUT_LINE ('LOCATION :'|| LOCATION);

END;
\
SET SERVEROUTPUT OFF

-- THIS IS USE OF IF ELSE CONDITION I N PROGRAMING
SET  SERVEROUTPUT ON 
DECLARE
    A number(2) :=56;
BEGIN
    IF(A < 45) THEN
        DBMS_OUTPUT.PUT_LINE('THIS IS LESS THEN 45');
    ELSE
        DBMS_OUTPUT.PUT_LINE(' THIS IS NOT LESSTHEN 45');
    ELSE IF:
        DBMS_OUTPUT.PUT_LINE('VALUSE OF A IS :'|| A);
END;
/
SET SERVEROUTPUT OFF

-- THIS IS USE FOR LOOP OR LOOPING COMMNADS

-- this is use of for loop
ser SERVEROUTPUT on
BEGIN
    DBMS_OUTPUT.PUT_LINE('this is a for loop');
    for i in 1..5 LOOP //// for i  in reverse 1..5 loop     -- this is another way to reverse the loop
        DBMS_OUTPUT.PUT_LINE('number is :'||  i);
    end loop;
END;
/
set SERVEROUTPUT OFF

--- this is a loop in oracle

set SERVEROUTPUT on 
    DECLARE
        i number(2):=3;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('this is demo on loop');
        loop
            exit when i>10;
            DBMS_OUTPUT.PUT_LINE('number is :'||i);
            i:=i + 1;
        end loop;
    end;
    /
set SERVEROUTPUT OFF

-- this is a while loop in oracle
set SERVEROUTPUT on 
    DECLARE
        i number(2):=1;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('this is a while loop');
        while i<= 10 loop
            DBMS_OUTPUT.PUT_LINE('number is:'|| i);
        end loop;
    END;
    /
set SERVEROUTPUT OFF

-- this is a cursor in oracle
set SERVEROUTPUT on 
set verify OFF
    DECLARE
        ctr number(2):=0;
        deid number(2);
        dename varchar(3);
        dlocation varchar2(34);

    cursor curso_1 is
        SELECT eid , ename , location from empolore where Dnmae ='TA';
        no_department_found exception;
    
    BEGIN
        OPEN curso_1;
        LOOP
            FETCH curso_1 INTO DEID, DNAME, DLOCATION;
            EXIT WHEN CUR_EXP%no_department_found
            CTR i = ctr + 1;
            insert into newemployee values (deid , dname, dlocation);
            DBMS_OUTPUT.PUT_LINE(ctr|| 'lines inserted into newempoyee table');
        end loop;
    
         DBMS_OUTPUT.PUT_LINE('total number of records is '|| ctr);

    end;
    /
    set SERVEROUTPUT OFF
set verify on

-- this is a trigger in oracle
create trigger trigger_name
    after /// before insert or update or delete on table_name
        for each row
            begin
                if inserting THEN
                    insert into table_nmae_2 values(cloumn_nmae);
                elseif update THEN
                insert into table_nmae_2 values(cloumn_nmae);
                elseif delete THEN
                insert into table_nmae_2 values(cloumn_nmae);
            end if;
        end;
        /
        

