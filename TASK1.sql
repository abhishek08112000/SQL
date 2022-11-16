CREATE DATABASE nov_2;

CREATE TABLE kasat_industries(id int not null, name varchar(20) unique, main_office varchar(20), year_of_est int not null ,
	no_of_emp int, branch varchar(20) unique ,profit bigint,check(profit>10000) ,emp_hiring_date date, no_of_gate int, 
    import_export varchar(10), no_vehicles int) ; 
    
    DROP TABLE kasat_companies;

INSERT INTO kasat_industries VALUES(1, 'BOOOK_INDUSTRIE', 'BAGALKOT', 1998, 68, 'BAGALKOT', 250000, current_date(), 5, 
										'NO', 20)
                                        
INSERT INTO kasat_industries VALUES(2, 'TEXTILE_INDUSTRIE', 'NAVANAGAR', 2000, 120, 'NAVANAGAR', 900000, current_date(), 3, 
										'NO', 65);

INSERT INTO kasat_industries VALUES(3, 'PAPER_INDUSTRIE', 'KEMP_ROAD', 2001, 69, 'VIDYAGIRI', 120000, current_date(), 2, 
										'YES', 50);
                                        
INSERT INTO kasat_industries VALUES(4, 'SEEDS_INDUSTRIE', 'NAVANAGAR_BYPASS', 2015, 51, 'NAVANAGAR_BYPASS', 55000, current_date(), 1, 
										'YES', 26);
                                        
INSERT INTO kasat_industries VALUES(5, 'SEEDSRAWMATERIAL', 'NAVANAGAR_BYPASS', 2015, 51, 'NANDISHWARA_NAGAR', 55000, current_date(), 1, 
										'YES', 26);
  
 INSERT INTO kasat_industries VALUES(6, 'TRANSPORT_INDUSTRIE', 'VIDYAGIRI', 2016, 99, 'COLLEGE_CROSS', 30000, current_date(), 1, 
										'NO', 20); 
  
SELECT * FROM kasat_industries;

DROP TABLE kasat_industries;



