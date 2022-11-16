SUBQUERIES:

SELECT * FROM bank_details;
SELECT * FROM cust_dtls;
SELECT * FROM loan_details;

SELECT bank_name from bank_details where bank_id = (SELECT b_id from cust_dtls where cust_id = 201);

SELECT no_of_cust from bank_details where bank_id = (SELECT b_id from cust_dtls where cust_id = 202);

select bank_total_balance from bank_details where bank_id = (select b_id from cust_dtls where cust_id = 209);

select bank_name from bank_details where bank_id = (select b_id from cust_dtls where cust_name = 'Anu');

select cust_name from cust_dtls where cust_id = (select cust_id from loan_details where b_id = 404);

select loan_type from loan_details where cust_id = (select cust_id from cust_dtls where cust_name = 'sahana');