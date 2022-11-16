CREATE DATABASE tasks;

CREATE TABLE emp(slno int, emp_no bigint, emp_names VARCHAR(20), job_role varchar(20), laptop_id bigint, hire_date date , salary bigint , commition bigint, desc_no int)

SELECT * FROM emp;

ALTER TABLE emp DROP COLUMN emp_no;

INSERT INTO emp VALUES(1, 'GANESH','SOFTWARE DEVELOPER',7259, current_date(), 25000,500,12)
INSERT INTO emp VALUES(2, 'RAJ','SOFTWARE ENGINEER',7260, current_date(), 26345,100,6)
INSERT INTO emp VALUES(3, 'VISHWA','FRONTEND DEVELOPER',7261, current_date(), 25000,150,1)
INSERT INTO emp VALUES(4, 'ARUN','JAVA  DEVELOPER',7262, current_date(), 29000,500,16)
INSERT INTO emp VALUES(5, 'NEHA','SOFTWARE DEVELOPER',7263, current_date(), 25000,500,19)
INSERT INTO emp VALUES(6, 'MANJUNATH','SOFTWARE DEVELOPER',7264, current_date(), 28000,500,20)
INSERT INTO emp VALUES(7, 'MANJULA','HR MANAGER',7265, current_date(), 30000,200,32)
INSERT INTO emp VALUES(8, 'VINOD','JUNIOR DEVELOPER',7266, current_date(), 36000,000,6)

ALTER TABLE emp ADD COLUMN company_name VARCHAR(20) DEFAULT 'GOOGLE';

TRUNCATE TABLE emp ;

SELECT * FROM emp;


constraints:

not null:

CREATE TABLE amazon(id int not null,item_name varchar(20),location varchar(20))

INSERT INTO amazon VALUES(1,'SPEAKER','BTM LAYOUT')
INSERT INTO amazon VALUES(NULL,'SPEAKER','BTM LAYOUT')
INSERT INTO amazon VALUES(2,'SPEAKER','nandini LAYOUT')

SELECT * FROM amazon

CREATE TABLE olympics(id int not null, name varchar(30) unique,no_of_games int not null unique)

SELECT * FROM olympics;

INSERT INTO olympics VALUES(1,'RELAY',4)
INSERT INTO olympics VALUES(2,'TENNIS',3)
INSERT INTO olympics VALUES(3,'FOOTBAL',5) 

ALTER TABLE olympics ADD COLUMN location varchar(20) not null;

CREATE TABLE cricket(id int not null,team_name varchar(20) unique ,no_of_players int , check(no_of_players>=10));
SELECT * FROM cricket;              (check constraints is not null and unique also)

INSERT INTO cricket VALUES(1,'INDIA',11);
INSERT INTO cricket values(2,'AUSTRALIA',10);
INSERT INTO cricket values(3,'England',10)


REVERSE :
SELECT REVERSE(emp_names) from emp ;

lpad:
lpad(string,5,stringtobeadded);
SELECT LPAD('XWORKZ',10,'AA'); (LEFT SIDE)
SELECT RPAD('XWORKZ',10,'AA');(RIGHT SIDE)

CHECK:

CREATE TABLE fooditems(id int not null,restaurant_name varchar(20),food_name varchar(20),quantity int,price int,check(price>=45 AND price<=200));

SELECT * FROM fooditems;

INSERT INTO fooditems VALUES(1,'Udupi vihara','EDLI VADA',2,80);
INSERT INTO fooditems VALUES(2,'PANJURLI','CHICKEN HYDRABADI',3,180);
INSERT INTO fooditems VALUES(3,'HOTEL THE PARK','VEG BIRIYANI',2,160);

LOCK:

LOCK TABLE fooditems READ;

INSERT INTO fooditems VALUES(4,'SHABARI HOTEL','SUOTH INDIAN MEALS',2,90);

UNLOCK TABLES

SELECT * FROM fooditems limit 2 ;


SELECT GREATEST(55,22,69,215,26,15,445,4);

DATEDIFF:

SELECT DATEDIFF('2022-11-01','2022-10-08'); 


DAYNAME:

SELECT DAYNAME('2022-11-08') 


/*3-11-2022*/
makedate:
SELECT makedate(2022,100)

FORMAT:
SELECT FORMAT(15985.216545,2) /*IT WILL REDUCE THE NO OF DECIMAL PLACES*/

DATE_ADD:
SELECT DATE_ADD('2022-11-03',interval -5 day);
SELECT DATE_ADD('2022-11-03', interval 5 day);
SELECT DATE_ADD('2022-11-03 04-25-20', interval 20 minute);
SELECT DATE_ADD('2022-11-03 04-25-20', interval -20 minute);
SELECT DATE_ADD('2022-11-03 04-25-20', interval 2 quarter);
SELECT DATE_ADD('2022-11-03 04-25-20', interval 2 week);
SELECT DATE_ADD('2022-11-03 04-25-20', interval 5 second);
SELECT DATE_ADD('2022-11-03 04-25-20', interval -5 second);
SELECT DATE_ADD('2022-11-03 04-25-20', interval 5 MONTH);
SELECT DATE_ADD('2022-11-13 04-25-20', interval -5 MONTH);
SELECT DATE_ADD('2025-11-13 12-25-20', interval 15 year);

SET OPERATOR; USED TO COMBINED THE DATA FROM TWO TABLES
1)UNION
2)UNION ALL

CREATE TABLE a(id int)
INSERT INTO a values(1);
INSERT INTO a values(2)
INSERT INTO a values(3)
INSERT INTO a values(4)
INSERT INTO a values(5)
INSERT INTO a values(6)
INSERT INTO a values(7)
INSERT INTO a values(8)
INSERT INTO a values(9)
INSERT INTO a values(10)
SELECT*FROM a
union
SELECT*FROM b;
union
SELECT id FROM amazon
UNION
SELECT id FROM fooditems;

CREATE TABLE metro(id int, m_name varchar(20), source varchar(30), dest varchar(60), ticket int);

INSERT INTO metro values(1,'Namm_Metro','Nagasandra','Mejastic',22);
INSERT INTO metro values(2,'Nimma_Metro','Rajajinagar','Gurguntepalya',15);
INSERT INTO metro values(3,'Vinoda_Metro','Sandalsoapfactory','Bayappanahalli',18);
INSERT INTO metro values(4,'My_Metro','MG_road','Vijayanagar',26);
INSERT INTO metro values(5,'Harsha_Metro','Vijayanagar','Mejastic',12);
INSERT INTO metro values(6,'Vishala_Metro','Nagasandra','LalBhag',10);
INSERT INTO metro values(7,'Shubham_Metro','Nationalcollege','MgRoad',16);
INSERT INTO metro values(8,'Namm_Metro','Nagasandra','CubbonPark',23);
INSERT INTO metro values(9,'Namm_Metro','Chickpete','Mejastic',14);
INSERT INTO metro values(10,'Namm_Metro','Mahalaxmi','Mejastic',18);

SELECT * FROM metro; 

CREATE TABLE train(id int, name varchar(60),train_no int, src varchar(50), dest varchar(50));

INSERT INTO train values(1,'NammExpress',16535,'Bagalkot','KSR_Bengaluru');
INSERT INTO train values(2,'HarishaExpress',54515,'Chennai','Kerala');
INSERT INTO train values(3,'NimmaExpress',26545,'Bagalkot','Pondicherry');
INSERT INTO train values(4,'VinodaExpress',23658,'Coimbatore','Wayanad');
INSERT INTO train values(5,'VishExpress',26596,'Udupi','KSR_Bengaluru');
INSERT INTO train values(6,'GadagExpress',23615,'Gadag','Bikaner');
INSERT INTO train values(7,'MatralayExpress',95874,'Hubli','Mantralaya');
INSERT INTO train values(8,'Gol_Gumbaz_Express',16536,'Solapur','Mysore');
INSERT INTO train values(9,'MysoreExpress',56984,'Chamarjnagar','Mysore');
INSERT INTO train values(10,'NijamuddinExpress',45623,'Hubli','Pune');

SELECT * FROM train;

SELECT id,m_name FROM metro;
union
SELECT id,name FROM train;

TRUNCATE TABLE train;


TABLE: COMMONWELTHGAMES
COLUMN: id,game_name,no_of_players,country_participated,no_of_medals,captain_name,penalty_points,bonus_points,
sponser,venue,team_rank,team_points,player_ranking,Winner_team,Runners_team,semi_final_team,final_team,refree_name
host_country,year_of_conduct,qualifier_team_winner,qualifier_team_runner,qualifier_venue.




