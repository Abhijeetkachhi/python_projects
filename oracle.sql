        -- this is commands help you to create a data base in sql
create database person_database;

        -- this is a sql commnda where you can create a table for database
create table person(Nmae varchar2(20), addresss varchar2(34), gendar varchar2(23));

-- this is use for see structure of the table
DESC person;

--THIS IS USE FOR INSERT  DATA IN TO A TABLE
insert into person values('Abhijeet','Kaneradev','male')
insert into person (Nmae, addresss) values ('Bhumika','Kaneradev')      -- this is use for store a custom column value in table 
insert into person values ('&Name', "&address", '&gender')      -- this commands ask yuo one by one data name

-- THIS IS USE FOR INSERTING MULTIPLE RECORDS IN A TABLE
INSERT all
INTO person values ("ALOAK", "KANERADEV")       -- USE DIFFERENT TABLR ALSO
INTO student values ("AMIT", "KANERADEV")
SELECT * FROM dual;

 -- THIS IS USE FOR SEE A RECORD ON THE TABLE
 SELECT * FROM person;
 select Nmae, addresss from person; 

 --this is use for drop or delete table parmanently
 drop table tablename;

 -- this is the to add a unique constraints in a table
 create table family(id number PRIMARY KEY, nmaes varchar2(23) NOT NULL );

  -- this is use for delete a data from a table
  delete from table_name where id=2;

  -- this is use for update a data from a table
  update student set column_nmae ='data' where id=3;
  update student set column_nmae ='data', column_nmae='data' where id=3;

  -- this is a where condition with select commands
  select * from person where name ='Abhijeet';
  select * form person where address= 'Kaneradev';
  select * from person where gendar is null;             -- this so where data is empty of row
  select * from person order by column_nmae;            -- this is so acending order
  select * from person order by column_nmae desc;       -- this is so decending order
  select * from student where not id=3;

  -- this is the like opreater which help you to identify importent data
  select * from person where Nmae like '%h%';   -- this so all data which contain h
  select * from person where Nmae like '_h%';   -- this so data which contain a h in second number

  -- this is help for in opreater which can find a more data in a single quary
  select * from person where name in ('Abhijeet','Bhumika');
  select * from person where Name= 'Abhijeet' or Name='Bhumika';        -- this is two way to perform same task 

  -- this is a "BETWEEN" opreater 
  select * form student where id BETWEEN 2 and 5;
  select * form student where id>=2 and id<=5;                  -- this show same data

  -- this is filter a date recorde between two date
  select * form student where date_coluamn between '10-SEP-2025' AND '20-JUN-2025';

  -- this is the pesudo column in oracle data base
  select sysdate, systimestamp from dual;
  select uid, user from dual;
  
  -- this is the drop table or delete table from data base
  Rename table_name to new_name;
  drop table table_name;

  -- this is save point and roll back
  save point save_point_name;        -- this is  a save point where we again reach if i want
  roll back to save_point_name; -- this is redirect you to your save point
  commit;       -- this save permanant data you can't go back in your save point

  -- this is the custom output with some tricks
  select column_nmae ||'-'|| column_nmae from person;

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
MAXVALUE 999   -- this is the maximum value wherer sequace will be reach
START WITH 1   --this is starting point
INCREMENT BY 1 -- this is the increment value
CACHE 20;  -- this is the memory value upto store before the run

-- this is how to use sequance  
 insert inot table_nmae values(sequance_name.NEXTVAL, aother_clouman_value);            -- THIS IS NEXTVAL
 insert inot table_nmae values(sequance_name.CURRVAL, aother_clouman_value);            -- THIS IS CURRVAL

 -- this is a automatic system ganerter column which asign in your table        -- i belive in univers i get everything  which  i want in my life.
 select ROWID, ROWNUM FROM table_name;

        --this is the alter commands for sequance
ALTER SEQUENCE seq_inc_by_ten  INCREMENT BY 10;
ALTER SEQUENCE seq_maxval  MAXVALUE  10;
 ALTER SEQUENCE seq_cycle NOCYCLE;
 ALTER SEQUENCE seq_cache NOCACHE;
 ALTER SEQUENCE seq_order NOORDER;

        -- this  is the length Oracle
SELECT length('hello world') FROM dual; -- this will return number which is number of charecter

        -- this is the replace function whihc replace a string in given line
Replace('i am here','am','am not');

-- this is use for creating a table space or data base in oracle
CREATE TABLESPACE NAME DATAFILE
'PATH_OF_SPACE\TABLE_SAPCE_NAME'
SIZE 50M;

-- THIS IS USE FOR CREATING A USER IN DATABASE
CREATE USER Bhumika IDENTIFIED BY 2233
DEFAULT TABLESPACE TABLE_SAPCE_NAME
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON TABLE_SAPCE_NAME;

-- THIS IS USE FOR CREATING A ROLE
CREATE ROLE RAOLE_NAME;

-- THIS IS FOR GIVE AN ACCESS IN ROLE
 GRANT CREATE TABLE, CREATE SESSION TO RAOLE_NAME;

 -- THIS IS FOOR GIVE ACCESS TO USER
 GRANT RAOLE_NAME TO Bhumika;

 -- THIS IS USE FOR DROP USER AND ROE
 DROP USER USER_NAME;
 DROP USER USER_NAME CASCADE;
 DROP ROLE RAOLE_NAME;

 --THIS IS USE FOR GIVE A TABLE ACCESS TO ANOTHER USER
 GRANT ALL IN table_nmae TO USER_NAME;

 -- THIS IS USE FOR REVOKE ALL PERMISION
  REVOKE ALL ON table_nmae FORM USER_NAME;

-- THIS IS  USE FOR REFERENCES INTIGRITY TO CONNECTED TWO TABLE
CREATE TABLE PERSON2 (NAME varchar2(44) column_nmae REFERENCES another_table_name on delete cascade, age varchar2(23)); 

-- this is use for alias of table column name
 select name "NMAE", FROM PERSON;

 -- THIS IS USE FOR TABLE ALIEAS ALSO THIS IS EQUI JOIN
 SELECT address FROM PERSON, student WHERE PERSON.NAME= student.NAME;   -- YOU CAN ALSO USE <
 SELECT address FROM PERSON P, student S WHERE P.NAME= S.NAME;          -- you can aslo use > for diffrent output

 -- THIS IS self join in a data table
 select e1.name, e2.address from person e1, person e2 where e1.name=e2.name;

 -- this is natural join in a two table
 select name, address gender from person natural join student;

 -- this is a cross join in a table
select * form person, student;          -- it show multiplication of two table

-- this is  left outer join in a table
select * from person, student where person.name = student.name(+);
select * from person left outer join  student where person.name = student.name;

-- this is a right outer join a table
select * from person, student where person.name(+) = student.name;
select * from person right outer join  student where person.name = student.name;

-- this is use for full outer join in a table
select * from person full outer join  student where person.name = student.name;

-- this is anti join in table
select * from person where name not in (select * from student);

-- this is use for formating a column
column column_name format 9.99.999;
column column_name format a3 table_name;        -- this is show only 3 cherecter of the name, it is a temporary
clear column;

-- this is aggregate function for number values
select count(column_name) form table_name;
select min(column_name) form table_name;
select max(column_name) form table_name;
select sum(column_name) form table_name;

-- this is a checrecter function
select initcap(column_name) form table_name;
select length(column_name) form table_name;
select instr(column_name) form table_name;
select greatest(column_name) form table_name;
select least(column_name) form table_name;
select ceil(column_name) form table_name;
select floor(column_name) form table_name;

-- this is use for buffer memory how to see them
l -- see buffer memory

-- this is use for not or in opreater in a table
select * from person where Name in ("Abhijeet", "Bhumika");
select * from person where Name  not in ("Abhijeet", "Bhumika");

-- ths is use for creating a constraints using
alter table table_name
add constraints constraints_name
foreign key (column_name)
REFERENCES table_name(column_name);

-- this is use for drop constraints
alter table table_name drop constraints constraints_name;

-- this is check constraints
create table table_name(age varchar2(23) constraints constraints_name check(age between 0 to 100));
check (column_name upper(column_name))

-- this is using alter table using check constraints
alter table table_name
add constraints constraints_name
check (marks between 0 and 100);

-- this is disable constraints
alter table table_name disable constraints constraints_name;

--this is use of group by  clouse
select * from table_name group by  column_name;

-- this is use of having clouse
select * from table_name
group by column_name
having > constion;

-- this is use of  union and union all intersect
select * from table_name
union
select * form table_name;

select * from table_name
union ALL
select * form table_name;

select * from table_name                
intersect
select * form table_name;

select * from table_name
minus
select * form table_name;

-- this is a view in oracle how to create view
create or replace view table_name as
select* from person;    -- this is using single table using
select* from person union select* from TABLE_2; -- this is use to create view with two table

