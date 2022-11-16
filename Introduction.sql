CREATE DATABASE aug_20 ;

USE aug_20 ;

CREATE TABLE ipl_teams(id int, team_name varchar(50), venue varchar(20), opposition varchar(30), match_day varchar(30))

SELECT*FROM ipl_teams ;

INSERT INTO ipl VALUES(1, 'RCB' , 'BENGALURU' , 'MI' , 'SATURDAY', 11);

/* syntax for adding new column to existing table 
ALTER TABLE table_name ADD COLUMN column _name datatype*/

ALTER TABLE ipl_teams ADD COLUMN no_of_players int;

/*syntax for drop column from existing table
ALTER TABLE table_name DROP COLUMN column_name*/

ALTER TABLE ipl_teams DROP COLUMN no_of_players ;

SELECT * FROM ipl_teams; 

/* syntax for renaming the column namr
ALTER TABLE table_name RENAME COLUMN old_column_name to new_column_namr*/

ALTER TABLE ipl_teams RENAME COLUMN id to slno;

INSERT INTO ipl VALUES(2, 'KKR' , 'BENGALURU' , 'CSK' , 'SUNDAY', 'INDIA' );

SELECT * FROM ipl_teams;

/* syntax for renaming the table name
RENAME  old_TABLE_name to new_table_name*/

RENAME TABLE ipl_teams to ipl ;

SELECT * FROM ipl;

/* syntax for changing the datatype for existing column
ALTER TABLE table_name MODIFY COLUMN column_name new_datatype*/

ALTER TABLE ipl MODIFY COLUMN slno bigint;

/* syntax forb describing the table */
DESC ipl;


ALTER TABLE ipl ADD COLUMN place varchar(20) DEFAULT 'INDIA' ;
SELECT * FROM ipl;
ALTER TABLE ipl DROP COLUMN place ; 

TRUNCATE TABLE ipl;

INSERT INTO ipl VALUES(3, 'DD', 'MUMBAI' , 'KXIP' , 'MONDAY' , 'INDIA')
INSERT INTO ipl(slno, team_name , venue , opposition , match_day) VALUES(5,'RCB','MUMBAI','KKR','WEDNSDAY') 

SELECT * FROM ipl ;

INSERT INTO ipl VALUES(4, 'MI', 'PANJAB' , 'CSK' , 'TUESDAY', 'INDIA') 

/* 18/10/22*/

/* WHERE : is used to filter the data from the table based on the condition*/
/* syntax for WHERE 
SELECT * FROM table_name WHER condition*/


SELECT team_name FROM ipl WHERE team_name = "RCB";

SELECT * FROM ipl 


/* date datatype  - value is current_date & time datatype - value is current_time */  





