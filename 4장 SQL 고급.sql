# 날짜 : 2025/01/08
# 이름 : 이민성
# 내용 : 4장 SQL고급

#실습  4-1
CREATE TABLE `Member`(
`uid` 	varchar(10) primary Key,
`name`	varchar(10) NOT NULL,
`hp`	char(13)unique not NULL,
`pos`	varchar(10) DEFAULT "사원",
`dep`	int,
`rdate` dateTIME NOT NULL
);

create table `Department`(
`depNo`	int primary key,
`name`	varchar(10) not null,
`rel`	char(12) not null
);

create table `Sales`(
`seq`	int auto_increment primary KEY,
`uid`	varchar(10) NOT NULL,
`year`	year NOT NULL,
`month`	tinyint NOT NULL,
`sale`	INT
);

#실습 4-2
insert INTO `Member` values ("a101","박혁거세","010-1234-1001","부장",101,NOW());
insert INTO `Member` values ("a102","김유신","010-1234-1002","차장",101,NOW());
insert INTO `Member` values ("a103","김춘추","010-1234-1003","사원",101,NOW());
insert INTO `Member` values ("a104","장보고","010-1234-1004","대리",102,NOW());
insert INTO `Member` values ("a105","강감찬","010-1234-1005","과장",102,NOW());
insert INTO `Member` values ("a106","이성계","010-1234-1006","차장",103,NOW());
insert INTO `Member` values ("a107","정철","010-1234-1007","차장",103,NOW());
insert INTO `Member` values ("a108","이순신","010-1234-1008","부장",104,NOW());
insert INTO `Member` values ("a109","허균","010-1234-1009","부장",104,NOW());
insert INTO `Member` values ("a110","정약용","010-1234-1010","사원",105,NOW());
insert INTO `Member` values ("a111","박지원","010-1234-1011","사원",105,NOW());

insert into `Department` values (101,'영업1부','051-512-1001');
insert into `Department` values (102,'영업2부','051-512-1002');
insert into `Department` values (103,'영업3부','051-512-1003');
insert into `Department` values (104,'영업4부','051-512-1004');
insert into `Department` values (105,'영업5부','051-512-1005');
insert into `Department` values (106,'영업지원팀','051-512-1006');
insert into `Department` values (107,'인사부','051-512-1007');

insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a101',2018,1,98100);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a102',2018,1,136000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a103',2018,1,80100);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a104',2018,1,78000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a105',2018,1,93000);

insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a101',2018,2,23500);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a102',2018,2,126000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a103',2018,2,18500);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a105',2018,2,19000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a106',2018,2,53000);

insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a101',2019,1,24000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a102',2019,1,109000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a103',2019,1,101000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a104',2019,1,535000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a107',2019,1,24000);

insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a102',2019,2,160000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a103',2019,2,101000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a104',2019,2,43000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a105',2019,2,24000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a106',2019,2,109000);

insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a102',2020,1,201000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a104',2020,1,63000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a105',2020,1,74000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a106',2020,1,122000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a107',2020,1,111000);

insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a102',2020,2,120000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a103',2020,2,93000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a104',2020,2,84000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a105',2020,2,180000);
insert into `Sales` (`uid`,`year`,`month`,`sale`) values('a108',2020,2,76000);

#실습 4-3
SELECT * FROM `Member` WHERE `name`='김유신';
SELECT * FROM `Member` WHERE `name` <> '김춘추';
SELECT * FROM `Member` WHERE `pos`='사원' OR `pos`='대리';
SELECT * FROM `Member` WHERE `pos` IN('사원', '대리');
SELECT * FROM `Member` WHERE `name` LIKE '%신';
SELECT * FROM `Member` WHERE `name` LIKE '정_';
SELECT * FROM `Member` WHERE `pos`='차장' AND dep=101;
SELECT * FROM `Member` WHERE `pos`='차장' OR dep=101;
SELECT * FROM `Member` WHERE `name` != '김춘추';
SELECT * FROM `Member` WHERE `dep` IN(101, 102, 103);
SELECT * FROM `Member` WHERE `name` LIKE '김%';
SELECT * FROM `Member` WHERE `name` LIKE '김_ _';
SELECT * FROM `Member` WHERE `name` LIKE '_성_';
SELECT * FROM `Sales` WHERE `sale` > 50000;
SELECT * FROM `Sales` WHERE `sale` >= 50000 AND `sale` < 100000 AND `month`=1;
SELECT * FROM `Sales` WHERE `sale` BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `sale` NOT BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `year` IN(2020);
SELECT * FROM `Sales` WHERE `month` IN(1, 2);

#실습 4-4
select * FROM `Sales` order by `sale`;
select * FROM `Sales` order by `sale` ASC;
select * FROM `Sales` order by `sale` DESC;
SELECT * FROM `Member` ORDER BY `name`;
SELECT * FROM `Member` ORDER BY `name` DESC;
SELECT * FROM `Member` ORDER BY `rdate` ASC;
SELECT * FROM `Sales` WHERE `sale` > 50000 ORDER BY `sale` DESC;
SELECT * FROM `Sales`
	WHERE `sale` > 50000
	ORDER BY `year`, `month`, `sale` DESC;

#실습 4-5
SELECT * FROM `SALES` limit 3;
SELECT * FROM `SALES` limit 0,3;
SELECT * FROM `SALES` limit 1,2;
SELECT * FROM `Sales` LIMIT 5, 3;
SELECT * FROM `Sales` ORDER BY `sale` DESC LIMIT 3, 5;
SELECT * FROM `Sales` WHERE `sale` < 50000 ORDER BY `sale` DESC LIMIT 3;
SELECT * FROM `Sales`
	WHERE `sale` > 50000
	ORDER BY `year` DESC, `month`, `sale` DESC
	LIMIT 5;

#실습 4-6
SELECT SUM(`SALE`) AS `합계` FROM `SALES`;
SELECT AVG(`sale`) AS `평균` FROM `Sales`;
SELECT MAX(`sale`) AS `최대값` FROM `Sales`;
SELECT MIN(`sale`) AS `최소값` FROM `Sales`;
SELECT ceiling(1.2);
SELECT ceiling(1.8);
SELECT floor(1.2);
SELECT floor(1.8);
select round(1.2);
select round(1.8);
select rand(); # 0~1 사이 실수
select ceiling(rand()*10); # 1 ~ 10사이의 정수
SELECT COUNT(sale) AS `갯수` FROM `Sales`;
select count(*) AS `갯수` FROM `SALES`;

SELECT LEFT('hELLO WORLD',5);
SELECT RIGHT('hELLO WORLD',5);
SELECT substring('hELLO WORLD',5);
SELECT CONCAT('HELLO', 'WORLD');
SELECT CONCAT(`uid`, `name`, `hp`) FROM `member` WHERE `uid`='a108';

SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();
INSERT INTO `Member` VALUES ('a112', '유관순', '010-1234-1012', '대리', 107, NOW());

#실습 4-7
SELECT sum(`SALE`) AS `매출의 합계` FROM `SALES` WHERE `year` = 2018 and `month`=1  ;
#실습 4-8
select
	sum(`sale`) as `총합`,
	avg(`sale`) as `평균`
from 
		`SALES`
where 
		`year`=2019 and 
		`month`=2 and
        `sale` >=50000;
#실습 4-9
SELECT
	MIN(`SALE`) AS `최저`,
    MAX(`SALE`) AS `최고`
FROM
	`SALES`
WHERE
	`year`=2020;