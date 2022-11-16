CREATE TABLE hospital(slno int, hosp_name varchar(30), hosp_location varchar(30), no_of_doctors bigint, 
hosp_id int, shifts varchar(20), no_of_entrance int, ambolance_service varchar(20), billing_counters int,
canteen varchar(30), no_of_departments int);

INSERT INTO hospital values(1, 'KERUDI','BAGALKOT',15, 401, 'DAY/NIGHT', 2, 'AVAILABLE', 2, 'NOT-AVAILABLE',8);
INSERT INTO hospital values(2, 'HSK','NAVANAGR',19, 402, 'DAY/NIGHT', 3, 'AVAILABLE', 5, 'AVAILABLE',15);
INSERT INTO hospital values(3, 'ESIC','RAJAJINAGAR',10, 403, 'DAY', 2, 'AVAILABLE', 3, 'AVAILABLE',8);
INSERT INTO hospital values(4, 'KATTI','NAVANAGAR',15, 404, 'DAY/NIGHT', 2, 'AVAILABLE', 5, 'NOT-AVAILABLE',8);
INSERT INTO hospital values(5, 'VASANAD','MUDHOL',12, 405, 'DAY/NIGHT', 5, 'AVAILABLE', 4, 'NOT-AVAILABLE',5);
INSERT INTO hospital values(6, 'DHANUSH','VIDYAGIRI',13, 406, 'DAY/NIGHT', 7, 'AVAILABLE', 4, 'NOT-AVAILABLE',16);
INSERT INTO hospital values(7, 'SHANTI','BTMLAYOUT',17, 407, 'DAY/NIGHT', 8, 'AVAILABLE', 6, 'NOT-AVAILABLE',14);
INSERT INTO hospital values(8, 'KULKARNI','NAVANAGARBYPASS',10, 408, 'DAY/NIGHT', 6, 'AVAILABLE', 2, 'NOT-AVAILABLE',8);
INSERT INTO hospital values(9, 'DADDENAVAR','BENGALURU',15, 409, 'DAY/NIGHT', 2, 'AVAILABLE', 2, 'NOT-AVAILABLE',8);
INSERT INTO hospital values(10, 'BADAKALI','COLLEGECROSS',15, 410, 'DAY/NIGHT', 2, 'AVAILABLE', 2, 'NOT-AVAILABLE',8);

SELECT * FROM hospital;

CREATE TABLE pateint_details(slno int, pateint_name varchar(30), patient_id int, hosp_id int, 
gender varchar(20), age int,  contact bigint ,location varchar(20), adhar_no bigint, height_in_cm int,
weight_in_kg int);


INSERT INTO pateint_details values(1,'Jagadish',111,410,'Male',22,6958476958,'Mudhol',142536475869,168,45);
INSERT INTO pateint_details values(2,'Daneshwari',112,404,'Female',21,9685475968,'Bagalkot',362514695847,170,48);
INSERT INTO pateint_details values(3,'Suresh',113,405,'Male',56,8569745967,'Jamkahandi',475869362514,172,58);
INSERT INTO pateint_details values(4,'Harish',114,401,'Male',34,8569748956,'Kaladagi',859647142653,168,67);
INSERT INTO pateint_details values(5,'Adithi',115,402,'Female',22,7596846958,'Simikeri',362514748596,180,59);
INSERT INTO pateint_details values(6,'Nagaraj',116,403,'Male',45,8695769483,'Tulsigeri',451236987458,175,56);
INSERT INTO pateint_details values(7,'Ravikumar',117,406,'Male',58,6352419856,'Siddapur',856974152365,172,70);
INSERT INTO pateint_details values(8,'Shanti',118,407,'Female',45,85695476325,'Shirur',745869322698,180,65);
INSERT INTO pateint_details values(9,'Sahana',119,408,'Female',22,5469874586,'Bilagi',956985476254,168,45);
INSERT INTO pateint_details values(10,'Nivedita',120,409,'Female',22,6598745869,'Guledgudda',456987458693,162,32);

select * from pateint_details;

CREATE TABLE operation_details(slno int, operation_name varchar(30), operation_cost int, rom_no int,
 hosp_id int, patient_id int, amount_paid int, balance_amount int, madicine_cost int, 
 gaurdian_name varchar(30), no_of_medicines int);
 
 INSERT INTO operation_details VALUES(1,'HEART',25000,11,401,115,12500,12500,1500,'PRASHANT',4);
 INSERT INTO operation_details VALUES(2,'LIVER',30000,2,402,112,15000,15000,2000,'Viswa',3);
 INSERT INTO operation_details VALUES(3,'Appendix',18000,16,405,111,18000,000,125,'Swamy',4);
INSERT INTO operation_details VALUES(4,'Intestine',20000,45,403,114,10000,1000,150,'Sharada',5);
 INSERT INTO operation_details VALUES(5,'Kidny',50000,14,404,113,25000,25000,400,'Sarala',4);
 INSERT INTO operation_details VALUES(6,'Brain',80000,11,406,116,40000,40000,520,'Shanti',6);
 INSERT INTO operation_details VALUES(7,'Leg',35000,10,407,117,17500,17500,350,'Manjula',7);
 INSERT INTO operation_details VALUES(8,'Shoulder',23000,11,409,119,11500,11500,360,'Laxmi',4);
 INSERT INTO operation_details VALUES(9,'Spinalcord',25000,11,410,120,12500,12500,125,'Jyothi',4);
 INSERT INTO operation_details VALUES(10,'Eye',65000,9,408,118,30000,35000,680,'Preeti',9);

select * from operation_details;
select * from hospital;
select * from pateint_details;

SELECT hospital.hosp_name,hospital.hosp_location,pateint_details.pateint_name,pateint_details.location 
from hospital inner join pateint_details on hospital.slno = pateint_details.slno;

SELECT hospital.hosp_name,hospital.shifts,pateint_details.pateint_name,pateint_details.patient_id from
hospital left join pateint_details on hospital.slno = pateint_details.slno;

/*subqueries*/
SELECT hosp_name from hospital where hosp_id = (select hosp_id from pateint_details where patient_id = 115); 

SELECT hosp_name,hosp_location from hospital where hosp_id = (select hosp_id from pateint_details
where patient_id = 112);

SELECT hosp_name,hosp_location from hospital where hosp_id in (select hosp_id from pateint_details
where patient_id in(111,112,113));

select hosp_name,no_of_doctors from hospital where hosp_id = (select hosp_id from pateint_details where pateint_name = 'Jagadish');

select * from operation_details;
select * from pateint_details
select * from hospital;

select operation_name,rom_no from operation_details where hosp_id = (select hosp_id from pateint_details where pateint_name = 'Adithi')