joins:
INNER JOINS COMBINES THE       IT WILL RETURN COMMON VALUES FROM BOTH THE TABLES.
CREATE TABLE a(id int);

INSERT INTO a values(3),(5),(3),(6),(1),(8)
SELECT * FROM a

CREATE TABLE b(id int);

INSERT INTO b values(3),(5),(3),(6),(44),(5)
SELECT * FROM b
TRUNCATE TABLE b;
/*syntax for inner join
SELECT table1_name.column_name,table_name.column_name from table1 inner join table2 on
table1_name.column_name = table_name.column_name*/ 

SELECT * FROM a;
SELECT * FROM b;
SELECT a.id,b.id from a inner join b on a.id = b.id;

SELECT a.id as tablea,b.id as tableb from a inner join b on a.id = b.id;

SELECT * FROM train; 
SELECT name,src FROM train;
SELECT * FROM metro;
SELECT m_name,source from metro;

SELECT train.name,train.src,metro.m_name,metro.source from train inner join metro 
on train.id = metro.id;

SELECT * from amazon;
SELECT * FROM cricket;

SELECT item_name,location from amazon;
SELECT team_name,no_of_players from cricket;

SELECT amazon.item_name,amazon.location,cricket.team_name,cricket.no_of_players
from amazon inner join cricket on amazon.id = cricket.id ;

SELECT emp.emp_names,emp.job_role,fooditems.food_name,fooditems.restaurant_name 
from emp inner join fooditems on emp.slno = fooditems.id;

LEFT JOIN:

SELECT * FROM a;
SELECT * FROM b;
SELECT a.id,b.id from a left join b on a.id = b.id;

SELECT a.id as tablea,b.id as tableb from a inner join b on a.id = b.id;

CROSS JOIN:
SELECT * FROM train ;

SELECT train.name,metro.m_name from train,metro;




