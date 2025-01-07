# 날짜 : 2025/01/07
# 이름 : 이민성
# 내용 : 3장 테이블 제약조건

#실습 3-1
CREATE TABLE `User2` (
`uid` VARCHAR(10) PRIMARY KEY,
`name` VARCHAR(10),
`birth` CHAR(10),
`addr` VARCHAR(50)
);

#실습 3-2
insert into `user2` values ('A101','김유신','1990-02-03','김해');
insert into `user2` values ('A102','김춘추','1991-02-03','경주');
insert into `user2` values ('A102','장보고','1992-02-03','완도');
select * from `User2`;

#실습 3-3
create table `user3`(
`uid`	VARCHAR(10) primary key,
`name`	VARCHAR(10),
`birth`	CHAR(10),
`hp`	CHAR(13) unique,
`appr`	VARCHAR(50)
);

#실습 3-4
insert into `uese3` value ('A101','김유신','1990-01-01','010-1001-1001','김해');
insert into `user3` value ('A102','김춘추','1991-01-01','010-1001-1002','경주');
insert into `user3` value ('A103','장보고','1992-01-01','010-1001-1003','완도');
insert into `user3` value ('A104','강감찬','1993-01-01',NULL,'서울');
insert into `user3` value ('A105','이순신','1994-01-01',NULL,'부산');
select * from `user3`;

#실습 3-5
CREATE TABLE `parent`(
`pid` 	VARCHAR(10) PRIMARY KEY,
`name`	VARCHAR(10),
`birth`	CHAR(10),
`addr`	VARCHAR(100)
);

CREATE TABLE `Child`(
`cid`	VARCHAR(10) PRIMARY KEY,
`name`	VARCHAR(10),
`hp`	CHAR(13) UNIQUE,
`parent` VARCHAR(10),
FOREIGN KEY(`parent`) references `parent` (`pid`)
);

#실습 3-6
insert into `parent` value ('P101','김유신','1968-05-09','경남 김해시');
insert into `parent` value ('P102','김춘추','1972-11-23','경남 경주시');
insert into `parent` value ('P103','장보고','1978-03-01','전남 완도시');
insert into `parent` value ('P104','강감찬','1979-08-16','서울시 관악구');
insert into `parent` value ('P105','이순신','1981-05-23','부산시 진구');
select * from `parent`;

INSERT INTO `Child` value ('C101','김철수','010-1234-1001','p101');
INSERT INTO `Child` value ('C102','김영희','010-1234-1002','p101');
INSERT INTO `Child` value ('C103','강철수','010-1234-1003','p103');
INSERT INTO `Child` value ('C104','이철수','010-1234-1004','p105');
INSERT INTO `Child` value ('C105','정약용','010-1234-1005','p109');
select * from `Child`;

#실습 3-7
create table `user4`(
`uid`	VARCHAR(10) PRIMARY KEY,
`name`	VARCHAR(10) NOT NULL,
`gender`VARCHAR(1),
`age`	INT DEFAULT 1,
`hp`	CHAR(13) UNIQUE,
`addr`	VARCHAR(20)
);

#실습 3-8
insert into `user4` value('A101','김유신','M',21,'010-1234-1001','김해');
insert into `user4` value('A102','김춘추','M',20,'010-1234-1002','경주');
insert into `user4` value('A103','장보고','M',31,'010-1234-1003','완도');
insert into `user4` set
						`uid`='A104',
                        `name`='신사임당',
                        `gender`='F',
                        `addr` ='강릉';
SELECT * FROM `user4`;

#실습 3-9
create table `user5` (
`seq`	INT AUTO_INCREMENT PRIMARY KEY,
`name`	varchar(10) NOT NULL,
`gender`char(1) CHECK(`GENDER` IN('M','F')) ,
`age`	int DEFAULT 1 CHECK (`AGE` > 0 AND `AGE`<100),
`addr`	varchar(20)
);

#실습 3-10
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('김유신','M',25,'김해');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('김춘추','M',24,'경주');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('장보고','M',35,'완도');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('허난설헌','F',21,'광주');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('신사임당','F',25,'강릉');
SELECT * FROM USER5;