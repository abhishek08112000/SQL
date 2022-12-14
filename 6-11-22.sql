SELECT * FROM commonwealthgames;
DESC commonwealthgames;
ALTER TABLE commonwealthgames MODIFY COLUMN SPONSOR VARCHAR(30);

INSERT INTO commonwealthgames VALUES(1,'KOO KOO',16,'INDIA',1000,'ABHISHEK',25,20,'CEATE TYRES',
'CHINNSWAMYSTADIUM',1,34,5,'INDIA','PAKISTAN','INDIA','KISHORE','INDIA',
'KARANATAKA','ANDRAPRADESH','TELANGANA','INTERNATIONAL');
INSERT INTO commonwealthgames VALUES(2,'KABADDI',7,'BENGALURUBULLS',100,'PAWAN SHARAVATH',21,1,'APPOLO TYRES',
'KANTIRAVAINDORESTATDIUM',2,35,6,'BENGALURUBULLS','MUMBAI','BENGALURUBULLS','GURU','INDIA',
'BENGALURUBULLS','AP','BAGALKOT','STATELEVEL');
INSERT INTO commonwealthgames VALUES(3,'CRICKET',11,'INDIAA',1200,'DHONI',26,21,'MICHELLIN TYRES',
'BAGAALKOTSTADIUM',3,36,4,'INDIAA','PAKISTAN','ENGLAND','ROBERT','UAE',
'INDIA','ENGLAND','DUBAI','INTERNATIONAL');
INSERT INTO commonwealthgames VALUES(4,'HOCKEY',6,'ASIA',1268,'SUNIL',29,25,'SBI BANK',
'LALBAHADDURSHASTRISTADIUM',5,39,8,'ASIA','AMERICA','ASIA','JIMMY','AUS',
'ASI','TS','BLR','INTERNATIONAL');
INSERT INTO commonwealthgames VALUES(5,'WRSTLING',1,'HARIYANA',10,'GEETA',6,90,'KARANATAK BANK',
'NATIONALSTADIUM',9,40,10,'HARIYANA','PANJAB','HARIYANA','MAHAVEERSING','DELHI',
'MAHARASTRA','GOA','MUMBAI','NATIONAL');
INSERT INTO commonwealthgames VALUES(6,'WRSTLINGMENS',2,'PANJAB',5,'SALMAN',8,40,'CORPORATION BANK',
'NATIONALSTADIUMDELHI',91,410,110,'PANJAB','HARIYANA','PANJAB','ABHISHEK','NEPAL',
'WESTBENGAL','MEGHALAYA','SHILONG','NATIONAL');
INSERT INTO commonwealthgames VALUES(7,'KABADDIWOMENS',9,'KARNATAKA',15,'SHRUSTI',65,960,'SKODA',
'STATESTADIUM',156,50,510,'KARNATAKA','MAHARASHTRA','KARNATAKA','MANJULA','J&K',
'MUDHOL','HONNAVAR','CHIKMAGALURU','NATIONAL');

SELECT * FROM commonwealthgames;

SELECT rpad('KOO KOO',15,'LL');
SELECT rpad('INDIA',15,'A');
SELECT rpad('AMERICA',15,'AA');

SELECT LPAD('NDIA',5,'I')

SELECT REVERSE(CAPTAIN_NAME) FROM commonwealthgames;

SELECT COUNT(*) FROM commonwealthgames;
SELECT MAX(PENALTY_POINTS) FROM commonwealthgames;
SELECT SUM(BONUS_POINTS) FROM commonwealthgames;
SELECT MIN(TEAM_RANK) FROM commonwealthgames;

SELECT * FROM commonwealthgames WHERE id BETWEEN 2 AND 6;
SELECT * FROM commonwealthgames WHERE id not in(5,6);


