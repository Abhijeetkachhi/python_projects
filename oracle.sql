        -- this is commands help you to create a data base in sql
create database person_database;

        -- this is a sql commnda where you can create a table for database
create table person(Nmae varchar2(20), lastname varchar2(34), gendar varchar2(23));

        --this is the ALTER option in table
 ALTER TABLE person ADD (id int);
 ALTER TABLE person MODIFY( Nmae varchar2(25) );    --we only increase the value not decrese
 ALTER TABLE person DROP COLUMN gendar;

        -- this is commnds for creating a user in a database
CREATE USER Bhumika IDENTIFIED BY Bhumika;
ALTER USER Bhumika IDENTIFIED BY 12345678;

        -- This is a sequance where you can create a automatic increment sequance
 CREATE SEQUENCE supplier_seq   -- this is the name of the sequance
     MINVALUE 1 -- this is initial point of the sequace
     MAXVALUE 999999999999999999999999999   -- this is the maximum value wherer sequace will be reach
     START WITH 1   --this is starting point
     INCREMENT BY 1 -- this is the increment value
     CACHE 20;  -- this is the memory value upto store before the run

        --this is the alter commands for sequance
ALTER SEQUENCE seq_inc_by_ten  INCREMENT BY 10;
ALTER SEQUENCE seq_maxval  MAXVALUE  10;
 ALTER SEQUENCE seq_cycle NOCYCLE;
 ALTER SEQUENCE seq_cache NOCACHE;
 ALTER SEQUENCE seq_order NOORDER;

        -- this  is the length Oracle
SELECT length('hello world') FROM dual; -- this will return number which is number of charecter

        -- this is the replace function whihc replace a string in given line
replace('i am here','am','am not');

