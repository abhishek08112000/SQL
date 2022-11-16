CREATE DATABASE aug_15;

USE aug_15;

CREATE TABLE student_lis(sl_no int, student_id varchar(50), student_name varchar(30), college_name varchar(50), brach varchar(20) ,passing_year varchar(5) ,contact_no varchar(10), email_id varchar(30), batch varchar(10), date_of_joining varchar(10))

SELECT*FROM student_lis;

INSERT INTO student_lis VALUES(1, '128' , 'ABHISHEK NAYAK' , 'BGMIT' , 'CIVIL ENGINEERING' , '2022', '8431044112', 'abhisheknayak.xworkz@gmail.com', 'CSR', '15/08/2022') 

SELECT*FROM student_lis;

INSERT INTO student_lis VALUES(2, '126', 'MANJULA HUDED', 'BGMIT', 'CIVIL ENGINEERING', '2022', '9358762148', 'manjulahuded.xworlz@gmail.com', 'CSR', '15/08/2022') 

SELECT*FROM student_lis;

INSERT INTO student_lis VALUES(3, '166', 'NANDINI PARANGI', 'BGMIT', 'CIVIL ENGINEERING', '2022', '9685473256', 'nandini.xworlz@gmail.com', 'CSR', '15/08/2022')

SELECT*FROM student_lis;
INSERT INTO student_lis VALUES(4, '1648', 'SHRUTI CHETTAR', 'AITM', 'CIVIL ENGINEERING', '2022', '6325481256', 'shrutichettar.xworlz@gmail.com', 'CSR', '15/08/2022')

SELECT*FROM student_lis;

INSERT INTO student_lis VALUES(5, '1658', 'NAVNEETA', 'AITM', 'MECHANICAL ENG', '2022', '6584726589', 'NAVNEETA.xworlz@gmail.com', 'NON_CSR', '15/08/2022')

SELECT*FROM student_lis;

INSERT INTO student_lis VALUES(6, '2658', 'MALLIKARJUN BALMI', 'BGMIT', 'CIVIL ENGINEERING', '2022', '6584721568', 'MALLIKARJUN.xworlz@gmail.com', 'NON_CSR', '22/08/2022')

SELECT INTO student_lis;

INSERT INTO student_lis VALUES(7, '26485', 'HANAMANT ARENAD', 'BGMIT', 'CIVIL ENGINEERING', '2022', '7625485214', 'HANAMANT.xworlz@gmail.com', 'CSR', '18/08/2022')

SELECT*FROM student_lis;

INSERT INTO student_lis VALUES(8, '216', 'MANJUNATH HUGAR', 'BGMIT', 'CIVIL ENGINEERING', '2021', '8126547856', 'manjunath.xworlz@gmail.com', 'CSR', '22/08/2022')

SELECT*FROM student_lis;

INSERT INTO student_lis VALUES(9, '1365', 'MUDASAR NADAF', 'BGMIT', 'CIVIL ENGINEERING', '2022', '6235145286', 'mudasar.xworlz@gmail.com', 'NON_CSR', '15/08/2022')

SELECT*FROM student_lis;

INSERT INTO student_lis VALUES(10, '12548', 'SHAHANAWAZ HUSSAIN', 'BGMIT', 'CIVIL ENGINEERING', '2022', '2136584656', 'shahanawaz.xworlz@gmail.com', 'NON_CSR', '26/08/2022')

SELECT * FROM student_lis ; 

ALTER TABLE student_lis ADD COLUMN date_of_result VARCHAR(20) DEFAULT '06/07/2022' ;

ALTER TABLE student_lis DROP COLUMN date_of_result ;