#작업2
INSERT INTO `Customer` VALUES ('760121-1234567','정우성','서울','1976-01-21',NULL,'010-1101-7601','배우');
INSERT INTO `Customer` VALUES ('750611-1234567','이정재','서울','1975-06-11',NULL,'010-1102-7506','배우');
INSERT INTO `Customer` VALUES ('890530-1234567','전지현','대전','1989-05-30','jjh@naver.com','010-1103-8905','자영업');
INSERT INTO `Customer` VALUES ('790413-1234567','이나영','대전','1979-04-13','lee@naver.com','010-2101-7904','회사원');
INSERT INTO `Customer` VALUES ('660912-1234567','원빈','대전','1966-09-12','one@naver.com','010-2104-6609','배우');

INSERT INTO `Card` VALUES ('2111-1001-1001','760121-1234567','1011-1001-1001','2020-01-21',1000000,'2020-02-10','check');
INSERT INTO `Card` VALUES ('2041-1001-1002','890530-1234567','1011-1001-1002','2020-06-11',3000000,'2020-06-15','check');
INSERT INTO `Card` VALUES ('2011-1001-1003','790413-1234567','1011-1001-1003','2020-05-30',5000000,'2020-06-25','check');
INSERT INTO `Card` VALUES ('2711-1001-1004','660912-1234567',NULL,'2020-04-13',1000000,'2020-05-10','credit');
INSERT INTO `Card` VALUES ('2611-1001-1005','760121-1234567','1011-1002-1005','2020-09-12',1500000,'2020-10-10','check');

INSERT INTO `Account` VALUES ('1011-1001-1001','760121-1234567','자유입출금',4160000,'Y','2020-01-21 13:00:02');
INSERT INTO `Account` VALUES ('1011-1001-1002','890530-1234567','자유입출금',376000,'Y','2020-06-11 13:00:02');
INSERT INTO `Account` VALUES ('1011-1001-1003','790413-1234567','자유입출금',1200000,'Y','2020-05-30 13:00:02');
INSERT INTO `Account` VALUES ('1011-2001-1004','660912-1234567','정기적금',1000000,'N','2020-04-13 13:00:02');
INSERT INTO `Account` VALUES ('1011-1002-1005','760121-1234567','자유입출금',820000,'Y','2020-09-12 13:00:02');

INSERT INTO `Transaction`(`acc_id`,`trans_type`,`trans_message`,`trans_money`,`trans_date`) VALUES ("1011-1001-1001","입금","2월 정기급여",3500000,"2020-02-10 12:36:12");
INSERT INTO `Transaction`(`acc_id`,`trans_type`,`trans_message`,`trans_money`,`trans_date`) VALUES ("1011-1001-1003","출금","ATM 출금",300000,"2020-02-10 12:37:21");
INSERT INTO `Transaction`(`acc_id`,`trans_type`,`trans_message`,`trans_money`,`trans_date`) VALUES ("1011-1001-1002","입금","2월 급여",2800000,"2020-02-10 12:38:21");
INSERT INTO `Transaction`(`acc_id`,`trans_type`,`trans_message`,`trans_money`,`trans_date`) VALUES ("1011-1001-1002","출금","2월 공과금",116200,"2020-02-10 12:39:12");
INSERT INTO `Transaction`(`acc_id`,`trans_type`,`trans_message`,`trans_money`,`trans_date`) VALUES ("1011-1002-1005","출금","ATM 출금",50000,"2020-02-10 12:40:12");

#작업3
SELECT * FROM customer;

SELECT * FROM card;

SELECT * FROM account;

SELECT * FROM transaction; 

SELECT C.cust_name, C.cust_jumin, C.cust_phnum, C.cust_addr
FROM Customer C
JOIN Account A ON C.cust_jumin = A.cust_jumin
WHERE A.acc_balance >= 4000000;