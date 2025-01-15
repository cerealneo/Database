#날짜 : 2025/01/13
#이름 : 이민성
#내용: SQL연습문제1

#실습 1-1
CREATE DATABASE `Shop`;
CREATE USER 'shop'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON Shop.* TO 'shop'@'%';
FLUSH PRIVILEGES;

#실습 1-2
create table `Customer` (
`custld` 	varchar(10) primary Key,
`name`	varchar(10) NOT NULL,
`hp`	char(13)unique DEFAULT NULL ,
`addr`	varchar(100) DEFAULT NULL,
`rdate` dateTIME NOT NULL
);

create table `Product`(
`prodNo`	int primary Key,
`prodName`	varchar(10) NOT NULL,
`stock`		int NOT NULL DEFAULT 0,
`price`		int DEFAULT NULL,
`company`	varchar(20) NOT NULL
);

create table `Order`(
`orderNo`	int primary Key auto_increment,
`orderld`	varchar(10) NOT NULL,
`orderProduct`		int NOT NULL,
`orderCount`		int DEFAULT NULL DEFAULT 1,
`orderDate`	datetime NOT NULL
);

#실습 1-3
insert INTO `customer` values ("c101","김유신","010-1234-1001","김해시 봉황동",20220101);
insert INTO `customer` values ("c102","김춘추","010-1234-1002","경주시 보문동",20220102);
insert INTO `customer` values ("c103","장보고","010-1234-1003","완도군 청산면",20220103);
insert INTO `customer` values ("c104","강감찬","010-1234-1004","서울시 마포구",20220104);
insert INTO `customer` values ("c105","이성계",null,null,20220105);
insert INTO `customer` values ("c106","정철","010-1234-1006","경기도 용인시",20220106);
insert INTO `customer` values ("c107","허준",null,null,20220107);
insert INTO `customer` values ("c108","이순신","010-1234-1008","서울시 영등포구",20220108);
insert INTO `customer` values ("c109","송상현","010-1234-1009","부산시 동래구",20220109);
insert INTO `customer` values ("c110","정약용","010-1234-1010","경기도 광주시",20220110);

insert INTO `product` values (1,"새우깡",5000,1500,"농심");
insert INTO `product` values (2,"초코파이",2500,2500,"오리온");
insert INTO `product` values (3,"포카칩",3600,1700,"오리온");
insert INTO `product` values (4,"양파링",1250,1800,"농심");
insert INTO `product` values (5,"죠리퐁",2200,null,"크라운");
insert INTO `product` values (6,"마카렛트",3500,3500,"롯데");
insert INTO `product` values (7,"뿌셔뿌셔",1650,1200,"오뚜기");

insert INTO `order` values (1,"c102",3,2,"20220701131510");
insert INTO `order` values (2,"c101",4,1,"20220701141611");
insert INTO `order` values (3,"c108",1,1,"20220701172318");
insert INTO `order` values (4,"c109",6,5,"20220701172318");
insert INTO `order` values (5,"c102",2,1,"20220703091537");
insert INTO `order` values (6,"c101",7,3,"20220703123512");
insert INTO `order` values (7,"c110",1,2,"20220703165536");
insert INTO `order` values (8,"c104",2,4,"20220704142323");
insert INTO `order` values (9,"c102",1,3,"20220704215434");
insert INTO `order` values (10,"c107",6,1,"20220705142103");

#실습 1-4
select * from `customer`;

#실습 1-5
select `custld`,`name`,`hp` from `customer`;

#실습 1-6
select * from `product`;

#실습 1-7
select `company` from `product`;

#실습 1-8
select DISTINCT `company` from `product`;

#실습 1-9
select  `prodName`,`price` from `product`;

#실습 1-10
select  `prodName`,`price`+500 as`조정단가` from `product`;

#실습 1-11
SELECT `prodName`, `stock`, `price` FROM `Product` WHERE `company` = "오리온";

#실습 1-12
select `orderProduct`, `orderCount`, `orderDate` FROM `Order` WHERE `orderld` = "c102";

#실습 1-13
SELECT `orderProduct`, `orderCount`, `orderDate` FROM `Order` WHERE `orderld` = "c102"  and `orderCount` >=2;

#실습 1-14
SELECT * FROM `Product` WHERE `price` >=1000 and `price` <=2000;

#실습 1-15
SELECT `custld`, `name`, `hp`, `addr` FROM `Customer` where `name` like'김%';

#실습 1-16
SELECT `custld`, `name`, `hp`, `addr` FROM `Customer` where `name` like '__';

#실습 1-17
SELECT * FROM `Customer` WHERE `hp` is null; 

#실습 1-18
SELECT * FROM `Customer` WHERE `addr` is not null;

#실습 1-19
SELECT * FROM `Customer` order by `rdate` desc;

#실습 1-20
SELECT * FROM `Order` WHERE `orderCount` >= 3 order by `orderCount` desc, `orderProduct` asc;

#실습 1-21
SELECT avg(price) FROM `Product`;

#실습 1-22
select sum(stock) AS `재고량 합계` FROM `Product` WHERE `company`='농심';

#실습 1-23
select count(*) AS `고객수` FROM `Customer`;

#실습 1-24
SELECT COUNT(distinct `company`) AS `제조업체 수` FROM `Product`;

#실습 1-25
SELECT `orderProduct` AS `주문 상품번호`, SUM(`orderCount`) AS `총 주문수량` FROM `order` group by `orderProduct` order by `주문 상품번호`;

#실습 1-26
 SELECT `company` AS `제조업체`, COUNT(*) AS `제품수`, MAX(`price`) AS `최고가` FROM `Product` group by `company` order by `제조업체`;
 
#실습 1-27
 SELECT `company` AS `제조업체`, COUNT(*) AS `제품수`, MAX(`price`) AS `최고가` FROM `Product` GROUP BY `company` having `제품수` >=2;

#실습 1-28
SELECT `orderProduct`, `orderld`, SUM(`orderCount`) AS `총 주문수량` FROM `Order`
group by `orderProduct`, `orderld`
order by `orderProduct`;

#실습 1-29
 SELECT a.orderld, b.prodName FROM `Order` AS a 
 JOIN `product` as b
 ON	a.orderProduct = b.prodNo
 WHERE `orderld` = 'c102';

#실습 1-30
 SELECT `orderld`, `name`, `prodName`, `orderDate` FROM `Order` AS a
 JOIN `Customer` AS b
 ON a.orderld = b.custld
 JOIN `Product` AS c
 ON a.orderProduct = c.prodNo
 where substr(`orderDate`,1,10) = '2022-07-03'
