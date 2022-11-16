CREATE TABLE student_details(slno int, stu_name varchar(50), Surname varchar(30), father_name varchar(50), 
mother_name varchar(50), stu_mobileno bigint, parent_mobileno bigint, adharno bigint, school_name varchar(50),
location varchar(50), passout_year int, grade varchar(10), percentage int, school_joining_year int, 
school_ending_year int, higher_school varchar(50), joining_year int, passingyear int, sports varchar(50),
winning_medal int);

SELECT * FROM student_details

INSERT INTO student_details values(1,'Abhishek','Nayak','Kotresh','Gangubai',8431044112,9901799544,362514748596,
'BVVS school','vidyagiri',2016,'A',81,2007,2016,'GPT navanagar',2016,2019,'Wushu',2);

INSERT INTO student_details values(2,'Prashath','Hiremath','Basappa','Shantabai',4569857458,1623654897,695847415263,
'RMSA school','Bagalkot',2017,'B',74,2006,2015,'KLE Haver',2016,2019,'Cricket',4);

INSERT INTO student_details values(3,'Vishwanath','Hujaratti','Ravi','Jayalaxmi',4569857459,8596745968,586947142536,
'JA school','Mundargi',2014,'A',89,2009,2018,'Vagdevi Gadag',2016,2018,'Cricket',6);

INSERT INTO student_details values(4,'Vannur','Swamy','Dayanand','Sarasvathi',6958479685,6936258596,653214789658,
'JetpHI school','Bommanahalli',2016,'A',85,2010,2014,'Chetan pu college',2015,2017,'Throball',3);

INSERT INTO student_details values(5,'Shivu','Bommanjogi','Siddappa','Sarasvati',8431044112,9901799544,362514748596,
'PDJ school','Bijapur',1989,'A',75,1980,1989,'GPT Bijapur',1989,1992,'Karate',5);

INSERT INTO student_details values(6,'Nagesh','Hadarolli','Basappa','Eramma',586958547,85965847586,96584758693625,
'Govt school','Golasangi',1991,'A',74,1985,1992,'GPT Bagalkot',1992,1995,'Cricket',2);

INSERT INTO student_details values(7,'Manjula','Huded','Anand','Basamma',9365896589,69695869,526341859674,
'JTS school','Bagalkot',2016,'A',77,2007,2016,'GPT Navanagar',2016,2019,'Valleyball',2);

INSERT INTO student_details values(8,'Mallikarjun','Balmi','Shrishail','Sharada',58695847594,9568475869,85964569857465,
'BVVS school','vidyagiri',2016,'A',76,2007,2016,'GPT Bilgi',2016,2019,'Nothing',0);

INSERT INTO student_details values(9,'Seemant','Kabadi','Nagappa','Dyamavva',4569874586,9653214789,526341586958,
'Satya Sai school','Gaddanakeri',2014,'B',85,2006,2014,'GPT Bilgi',2014,2019,'Long jump',7);

INSERT INTO student_details values(10,'Shruti','Chettar','Shankar','Sahana',8596745869,9636258596,784512895623,
'Govt school','Hallur',2016,'A',80,2008,2016,'GPT navanagar',2016,2019,'Nothing',0);


SELECT * FROM student_details where school_name = 'BVVS school' AND location = 'vidyagiri';
SELECT * FROM student_details where school_name = 'JTS school' AND location = 'Bagalkot';
SELECT * FROM student_details where school_name = 'RMSA school' AND location = 'Bagalkot';
SELECT * FROM student_details where higher_school = 'GPT navanagar' AND joining_year = 2016;

SELECT * FROM student_details where school_name = 'BVVS school' OR location = 'vidyagiri';
SELECT * FROM student_details where school_joining_year = 2007 OR location = 'Bagalkot';

SELECT * FROM student_details where school_name  IN('BVVS school');

SELECT * FROM student_details where slno between 2 and 8;

SELECT * FROM student_details order by slno desc;
SELECT * FROM student_details order by location;
SELECT * FROM student_details order by stu_name;

SELECT * FROM student_details where passout_year=2016 group by stu_name;
SELECT * FROM student_details where school_name= 'BVVS school' group by stu_name;

