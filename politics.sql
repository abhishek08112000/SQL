CREATE TABLE politics(id int not null, state_name varchar(50) unique , cm_name varchar(50) unique,
cm_salary bigint not null, no_of_ministers bigint not null, name_of_speaker varchar(50) unique,
speaker_salary bigint not null, ruling_party varchar(50) , opposition_party varchar(50),
head_of_ruling_party varchar(50), head_of_opposition_party varchar(40)); 

INSERT INTO politics values(1, 'KARNATAKA', 'BASAVARAJ_BOMMAI',60000,250,'NARAYANRAO',55000,'BJP','JDS',
'YADIYURAPPA','KUMARSWMY');
INSERT INTO politics values(2, 'AP', 'ANANDREDDY',45000,150,'CHETAN',50000,'CONGRESS','BJP',
'SHASHIKUMAR','JANARDAN');
INSERT INTO politics values(3, 'TELENGANA', 'AKSHAYKUMAR',80000,250,'JANARDAN',45800,'BJP','CONGRESS',
'ABHISHEK','ANANDKUMAR');
INSERT INTO politics values(4, 'TAMILNADU', 'SURESHREDDY',60000,280,'SHATALA_JI',55000,'KSP','GSP',
'SHAKUNTHALA','RAVINA');
INSERT INTO politics values(5, 'KERALA', 'VENKATESH',60000,320,'NARESH',55000,'DST','JDP',
'DHANANJAY','RAKESH');
INSERT INTO politics values(6, 'MAHARASHTRA', 'SHIVANAD',59000,220,'PRASADRAO',55000,'BJP','CONGRESS',
'YADIYURAPPA','SIDRAMAYYA');
INSERT INTO politics values(7, 'GOA', 'CHRISTHPEN',60000,120,'JOSEPH',42000,'ASR','GHR',
'CHRIS','RABADA');
INSERT INTO politics values(8, 'GUJARATH', 'SIDDARTH',87000,450,'DANESH',54000,'GTR','SDT',
'CHAMANLAL','CHARULATA');
INSERT INTO politics values(9, 'PANJAB', 'JASMINDER',56000,260,'KHANNAOMKAR',55000,'GTE','SDF',
'OMKAR','VERENDER');
INSERT INTO politics values(10, 'MADYA_PRADESH', 'ASHA',50000,250,'JYOTI',55000,'FGS','BTJ',
'KAVYA','LAKSMI');
INSERT INTO politics values(11, 'BIHAR', 'ASLAM',60000,250,'ATIF',55000,'HTE','HMT',
'ASLAM','ATIF');
INSERT INTO politics values(12, 'ASSAM', 'DRUAPADI',60000,250,'RAHULGHANDI',55000,'BJP','CONGRESS',
'NARENDRA MODI','INDIRA GHANDI');
INSERT INTO politics values(13, 'ARUNACHALPRADESH', 'NARENDRA',60000,250,'INDIRA',55000,'BJP','JDS',
'AMITHSHAH','SONIYAGHANDI');
INSERT INTO politics values(14, 'DELHI', 'NARENDRAMODI',60000,500,'SONIYA',55000,'BJP','CONGRESS',
'AMITHSHAH','SONIYAGHANDI');

SELECT * FROM politics

SELECT LPAD('ABHISHEK' ,13,'NAYAK')
SELECT LPAD('MANJULA',12,'HUDED')

SELECT RPAD('ABHISHEK_',14,'NAYAK')
SELECT RPAD('AKASH_',11,'NAYAK')

SELECT COUNT(*) FROM politics;
SELECT MAX(cm_salary) from politics;
SELECT MIN(no_of_ministers) from politics;
SELECT SUM(cm_salary) from politics;

SELECT * from politics where id between 5 and 12;
SELECT * from politics where id in(5,8)
SELECT * from politics where id not in(8,12) 

SELECT cm_salary from politics where speaker_salary > 50000 GROUP BY cm_salary; 
SELECT cm_salary from politics where speaker_salary >50000 group by cm_salary having cm_salary>56000;

SELECT cm_salary from politics where speaker_salary >50000 group by cm_salary 
having cm_salary>56000 order by id;

SELECT * from politics where cm_salary > 45000 group by cm_name;

SELECT * FROM politics
select * from commonwealthgames

SELECT politics.state_name,politics.cm_name,commonwealthgames.GAME_NAME,commonwealthgames.COUNTRY_PARTICIPATED
FROM politics inner join commonwealthgames on politics.id = commonwealthgames.id;

SELECT politics.state_name,politics.cm_name,commonwealthgames.GAME_NAME,commonwealthgames.COUNTRY_PARTICIPATED
FROM politics left join commonwealthgames on politics.id = commonwealthgames.id;

SELECT politics.state_name,politics.cm_name,commonwealthgames.GAME_NAME,commonwealthgames.COUNTRY_PARTICIPATED
FROM politics cross join commonwealthgames on politics.id = commonwealthgames.id;

SELECT * FROM politics where cm_name like 'a%'
SELECT * FROM politics where state_name like '_a%'
SELECT * FROM politics where name_of_speaker like 'a__%'

SELECT * from politics where speaker_salary > 45000 group by no_of_ministers having 
no_of_ministers > 150 order by id;
