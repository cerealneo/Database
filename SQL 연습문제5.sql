# 날짜 : 2025/01/17
# 이름: 이민성
# 내용 : SQL연습문제5

#실습5-1
CREATE DATABASE `BookStore`;
CREATE USER 'bookstore'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `BookStore`.* TO 'bookstore'@'%';
FLUSH PRIVILEGES;
USE `BookStore`;

#실습5-2
create table `Customer`(
`custId`		int primary Key auto_increment,
`name`			varchar(10) NOT NULL,
`address`		varchar(20) default null,
`phone`			varchar(13) default null
);

create table `Book` (
`bookId` 	int 		primary Key,
`bookName`	varchar(20) NOT NULL,
`publisher`	varchar(20) NOT NULL,
`price`		int 		default null
);

create table `Order`(
`orderId`	int primary Key auto_increment,
`custId`	int NOT NULL,
`bookId`	int NOT NULL,
`salePrice`	int NOT NULL,
`orderDate`	date NOT NULL
);

#실습5-3
insert INTO `Customer`(`name`, `address`,`phone`) values ("박지성","영국 맨체스터","000-5000-0001");
insert INTO `Customer`(`name`, `address`,`phone`) values ("김연아","대한민국 서울","000-6000-0001");
insert INTO `Customer`(`name`, `address`,`phone`) values ("장미란","대한민국 강원도","000-7000-0001");
insert INTO `Customer`(`name`, `address`,`phone`) values ("추신수","미국 클리블랜드","000-8000-0001");
insert INTO `Customer`(`name`, `address`,`phone`) values ("박세리","대한민국 대전",null);

insert INTO `Book`(`bookId`,`bookName`, `publisher`,`price`) values (1,"축구의 역사","굿스포츠",7000);
insert INTO `Book`(`bookId`,`bookName`, `publisher`,`price`) values (2,"축구아는 여자","나무수",13000);
insert INTO `Book`(`bookId`,`bookName`, `publisher`,`price`) values (3,"축구의 이해","대한미디어",22000);
insert INTO `Book`(`bookId`,`bookName`, `publisher`,`price`) values (4,"골프 바이블","대한미디어",35000);
insert INTO `Book`(`bookId`,`bookName`, `publisher`,`price`) values (5,"피겨 교본","굿스포츠",8000);
insert INTO `Book`(`bookId`,`bookName`, `publisher`,`price`) values (6,"역도 단계별기술","굿스포츠",6000);
insert INTO `Book`(`bookId`,`bookName`, `publisher`,`price`) values (7,"야구의 추억","이상미디어",20000);
insert INTO `Book`(`bookId`,`bookName`, `publisher`,`price`) values (8,"야구를 부탁해","이상미디어",13000);
insert INTO `Book`(`bookId`,`bookName`, `publisher`,`price`) values (9,"올림픽 이야기","삼성당",7500);
insert INTO `Book`(`bookId`,`bookName`, `publisher`,`price`) values (10,"Olympic Champions","pearson",13000);

insert INTO `Order`(`custId`, `bookId`,`salePrice`,`orderDate`) values (1,1,6000,"2014-07-01");
insert INTO `Order`(`custId`, `bookId`,`salePrice`,`orderDate`) values (1,3,21000,"2014-07-03");
insert INTO `Order`(`custId`, `bookId`,`salePrice`,`orderDate`) values (2,2,8000,"2014-07-03");
insert INTO `Order`(`custId`, `bookId`,`salePrice`,`orderDate`) values (3,3,6000,"2014-07-04");
insert INTO `Order`(`custId`, `bookId`,`salePrice`,`orderDate`) values (4,4,20000,"2014-07-05");
insert INTO `Order`(`custId`, `bookId`,`salePrice`,`orderDate`) values (1,1,12000,"2014-07-07");
insert INTO `Order`(`custId`, `bookId`,`salePrice`,`orderDate`) values (4,5,13000,"2014-07-07");
insert INTO `Order`(`custId`, `bookId`,`salePrice`,`orderDate`) values (3,10,12000,"2014-07-08");
insert INTO `Order`(`custId`, `bookId`,`salePrice`,`orderDate`) values (2,10,7000,"2014-07-09");
insert INTO `Order`(`custId`, `bookId`,`salePrice`,`orderDate`) values (3,8,13000,"2014-07-10");

#실습5-4
select custid, name, address from Customer;

#실습5-5
select bookName, price from Book;

#실습5-6
select price , bookName  from Book;

#실습5-7
select * from Book;

#실습5-8
select publisher from Book;

#실습5-9
select distinct publisher from Book;

#실습5-10
select * from Book where price >=20000;

#실습5-11
select * from Book where price <20000;

#실습5-12
select * from Book where price between 10000 and 20000;

#실습5-13
select `bookId`,`bookName`,`price` from Book where price between 15000 and 30000;

#실습5-14
select * from Book where bookId = '2' or bookId = '3' or bookId = '5';

#실습5-15
select * from Book where bookId % 2 = 0;

#실습5-16
select * from Customer where name like "박%";
 
#실습5-17
select * from Customer where address like "대한민국 %";

#실습5-18
select * from Customer where phone is not null ;

#실습5-19
select * from Book where publisher = '굿스포츠' or publisher = '대한미디어';

#실습5-20
select publisher from Book where bookName = '축구의 역사';

#실습5-21
select publisher from Book where bookName like '%축구%';

#실습5-22
select * from Book where bookName like '_구%';

#실습5-23
select * from Book where bookName like '%축구%' and price >=20000;

#실습5-24
select * from Book order by bookName;

#실습5-25
select * from Book order by price, bookName;

#실습5-26
select * from Book order by price desc, publisher asc ;

#실습5-27
select * from Book order by price desc limit 3;

#실습5-28
select * from Book order by price asc limit 3;

#실습5-29
select sum(salePrice) as 총판매액 from `Order`;

#실습5-30
select 
	sum(salePrice) as 총판매액, 
	avg(salePrice) as 평균값, 
	min(salePrice) as 최저가, 
    max(salePrice) as 최고가 
from `Order`;

#실습5-31
select count(*) as 판매건수 from `Order`;

#실습5-32 애매
select bookId, replace(bookName ,'야구', '농구') as bookname,`publisher`,`price`  from Book ;

#실습5-33
select 
	`custId`,
    count(*) as `수량`
from `Order` where salePrice >=8000
group by custId
having `수량` >=2;

#실습5-34
select @@sql_mode;
set session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

SELECT
*
FROM `Customer` AS a
join `Order` as b on a.custId = b.custId;

#실습5-35
SELECT
*
FROM `Customer` AS a
join `Order` as b on a.custId = b.custId
order by a.custId;

#실습5-36
SELECT
a.name , b.salePrice
FROM `Customer` AS a
join `Order` as b on a.custId = b.custId
order by a.custId;

#실습5-37
select 
	a.name,
    sum(`saleprice`)
from Customer AS a
join `Order` as b
on a.custId = b.custId
group by a.name
order by name;

#실습5-38
SELECT
a.name , c.bookName
FROM `Customer` AS a
join `Order` as b on a.custId = b.custId
join `Book` as c on b.bookId = c.bookId
order by a.custId asc;

#실습5-39
SELECT
a.name , c.bookName
FROM `Customer` AS a
join `Order` as b on a.custId = b.custId
join `Book` as c on b.bookId = c.bookId
where saleprice =20000;

#실습5-40
select
	a.`name` , `salePrice`
FROM `Customer` AS a
left join `Order` as b on a.custId = b.custId;

#실습5-41
select
sum(salePrice) as '총매출'
FROM `Customer` AS a
left join `Order` as b on a.custId = b.custId
where name = "김연아";

#실습5-42
select bookname from Book order by price desc limit 1;

#실습5-43
select name from Customer as a
left join `Order` as b on a.custId = b.custId
where `orderId` is null;

#실습5-44
insert into `Book` set
					`bookId` =11,
					`bookName` = "스포츠의학", 
					`publisher`= "한솔의학서적",
					`price`=null;

#실습5-45
update Customer set address = "대한민국 부산" where custId=5;
select * from Customer;

#실습5-46
delete from Customer where `custId` =5;

