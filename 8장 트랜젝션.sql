#날짜 : 2025/02/27
#이름 : 이민성
#내용 : 8장 트랜젝션

#실습 8-1
START TRANSACTION;
SELECT * FROM `bank_account`;
UPDATE `bank_account` SET
								`a_balance` = `a_balance` - 10000
							WHERE
								`a_no` = '101-11-1001';
								
UPDATE `bank_account` SET
								`a_balance` = `a_balance` + 10000
							WHERE
								`a_no` = '101-11-1006';							
COMMIT;
SELECT * FROM `bank_account`;

#실습 8-2
START TRANSACTION;
UPDATE `bank_account` SET
								`a_balance` = `a_balance` - 10000
							WHERE
								`a_no` = '101-11-1001';

UPDATE `bank_account` SET
								`a_balance` = `a_balance` + 10000
							WHERE
								`a_no` = '101-11-1006';
SELECT * FROM `bank_account`;

ROLLBACK;
SELECT * FROM `bank_account`;

#실습 8-3
SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;
UPDATE `bank_account` SET
								`a_balance` = `a_balance` - 10000
							WHERE
								`a_no` = '101-11-1006';
ROLLBACK;
SELECT * FROM `bank_account`;