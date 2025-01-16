# 날짜 : 2025/01/17
# 이름: 이민성
# 내용 : SQL연습문제5

#실습4-1
CREATE DATABASE `Theater`;
CREATE USER 'theater'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON Theater.* TO 'theater'@'%';
FLUSH PRIVILEGES;
USE `theater`;

#실습4-2
create table `Movies` (
`movie_id` 	int primary Key auto_increment,
`title`	varchar(30) NOT NULL,
`genre`		varchar(10) NOT NULL,
`release_date`	date NOT NULL
);

create table `Customer`(
`customer_id`	int primary Key auto_increment,
`name`			varchar(20) NOT NULL,
`email`			varchar(50) NOT NULL,
`phone`			char(13) NOT NULL
);

create table `Bookings`(
`booking_id`		int primary Key,
`customer_id`		int NOT NULL ,
`movie_id`	int NOT NULL,
`num_tickets`	int NOT NULL,
`booking_date`	datetime NOT NULL
);

#실습4-3
insert INTO `Movies`(`title`, `genre`,`release_date`) values ("","","");
insert INTO `Bookings` values (,,,,"");


#실습4-4


#실습4-5


#실습4-6


#실습4-7


#실습4-8


#실습4-9


#실습4-10


#실습4-11


#실습4-12


#실습4-13


#실습4-14


#실습4-15


#실습4-16

 
#실습4-17


#실습4-18


#실습4-19


#실습4-20


#실습4-21


#실습4-22


#실습4-23


#실습4-24


#실습4-25


#실습4-26


#실습4-27


#실습4-28


#실습4-29


#실습4-30
