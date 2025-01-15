# 날짜 : 2025/01/15
# 이름: 이민성
# 내용 : SQL연습문제3

#실습3-1
CREATE DATABASE `College`;
CREATE USER 'college'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON College.* TO 'college'@'%';
FLUSH PRIVILEGES;
USE `College`;

#실습3-2
create table `Student` (
`stdNo` 	char(8) primary Key,
`stdname`	varchar(20) NOT NULL,
`stdHp`		varchar(13) unique NOT NULL,
`stdYear`	int NOT NULL ,
`stdAddress` varchar(100) DEFAULT NULL
);

create table `Lecture`(
`lecNo`		int primary Key,
`lecName`	varchar(20) NOT NULL,
`lecCredit`	int NOT NULL,
`lecTime`	int NOT NULL,
`lecClass`	varchar(10) DEFAULT null
);

create table `Register`(
`regStdNo`		char(8),
`regLecNo`		int NOT NULL ,
`regMidScore`	int DEFAULT NULL,
`regFinalScore`	int DEFAULT NULL,
`regTotalScore`	int DEFAULT NULL,
`regGrade`		char(1) DEFAULT NULL
);

#실습3-3
insert INTO `Student` values ("20201016","김유신","010-1234-1001",3,null);
insert INTO `Student` values ("20201126","김춘추","010-1234-1002",3,"경상남도 경주시");
insert INTO `Student` values ("20210216","장보고","010-1234-1003",2,"전라남도 완도시");
insert INTO `Student` values ("20210326","강감찬","010-1234-1004",2,"서울시 영등포구");
insert INTO `Student` values ("20220416","이순신","010-1234-1005",1,"부산시 부산진구");
insert INTO `Student` values ("20220521","송상현","010-1234-1006",1,"부산시 동래구");

insert INTO `Lecture` values (159,"인지행동심리학",3,40,"본304");
insert INTO `Lecture` values (167,"운영체제론",3,25,"본805");
insert INTO `Lecture` values (234,"중급 영문법",3,20,"본201");
insert INTO `Lecture` values (239,"세법개론",3,40,"본204");
insert INTO `Lecture` values (248,"빅데이터 개론",3,20,"본801");
insert INTO `Lecture` values (253,"컴퓨팅사고와 코딩",2,10,"본802");
insert INTO `Lecture` values (349,"사회복지 마케팅",2,50,"본301");

insert INTO `Register`(`regStdNo`, `regLecNo`) values ("20201126",234);
insert INTO `Register`(`regStdNo`, `regLecNo`) values ("20201016",248);
insert INTO `Register`(`regStdNo`, `regLecNo`) values ("20201016",253);
insert INTO `Register`(`regStdNo`, `regLecNo`) values ("20201126",239);
insert INTO `Register`(`regStdNo`, `regLecNo`) values ("20210216",349);
insert INTO `Register`(`regStdNo`, `regLecNo`) values ("20210326",349);
insert INTO `Register`(`regStdNo`, `regLecNo`) values ("20201016",167);
insert INTO `Register`(`regStdNo`, `regLecNo`) values ("20220416",349);

#실습3-4
SELECT * FROM `Lecture`;

#실습3-5
SELECT * FROM `Student`;

#실습3-6
SELECT * FROM `Register`;

#실습3-7
SELECT * FROM `Student` where `stdYear` = 3;

#실습3-8
SELECT * FROM `Lecture` where `lecCredit` = 2;

#실습3-9
UPDATE `Register` SET `regMidScore` = 36, `regFinalScore`= 42 
WHERE `regStdNo`='20201126' AND `regLecNo`=234;
UPDATE `Register` SET `regMidScore` = 24, `regFinalScore`= 62 
WHERE `regStdNo`='20201016' AND `regLecNo`=248;
UPDATE `Register` SET `regMidScore` = 28, `regFinalScore`= 40 
WHERE `regStdNo`='20201016' AND `regLecNo`=253;
UPDATE `Register` SET `regMidScore` = 37, `regFinalScore`= 57 
WHERE `regStdNo`='20201126' AND `regLecNo`=239;
UPDATE `Register` SET `regMidScore` = 28, `regFinalScore`= 68 
WHERE `regStdNo`='20210216' AND `regLecNo`=349;
UPDATE `Register` SET `regMidScore` = 16, `regFinalScore`= 65 
WHERE `regStdNo`='20210326' AND `regLecNo`=349;
UPDATE `Register` SET `regMidScore` = 18, `regFinalScore`= 38 
WHERE `regStdNo`='20201016' AND `regLecNo`=167;
UPDATE `Register` SET `regMidScore` = 25, `regFinalScore`= 58 
WHERE `regStdNo`='20220416' AND `regLecNo`=349;
SELECT * FROM `Register`;

#실습3-10
UPDATE `Register` SET `regTotalScore`= `regMidScore` + `regFinalScore`,
`regGrade` = if(`regTotalScore` >= 90, 'A',
			if(`regTotalScore` >= 80, 'B',
			if(`regTotalScore` >= 70, 'C',
			if(`regTotalScore` >= 60, 'D', 'F'))));
SELECT * FROM `Register`;

#실습3-11
select * from `Register` order by `regTotalScore` desc;

#실습3-12
select * from `Register` where `regLecNo` = 349 order by `regTotalScore` desc;

#실습3-13
select * from `Lecture` where `lecTime` >=30;

#실습3-14
select `lecName` ,`lecClass` from `Lecture`;

#실습3-15
select `stdNo` ,`stdName` from `Student`;

#실습3-16
select * from `Student` where `stdAddress` is null;

#실습3-17
select * from `Student` where `stdAddress` like "부산%";

#실습3-18
SELECT * FROM `Student` AS a 
LEFT join `Register` AS b 
ON a.stdNo = b.regStdNo; 

#실습3-19
select 
a.`stdNo`,
a.`stdName`,
b.`regLecNo`,
b.`regMidScore`,
b.`regFinalScore`,
b.`regTotalScore`,
b.`regGrade` 
from `Student` AS a, `Register` AS b WHERE a.stdNo = b.regStdNo;

#실습3-20
SELECT `stdName`, `stdNo`, `regLecNo` 
FROM `Student` AS a
JOIN `Register` AS b 
ON a.stdNo = b.regStdNo
where `regLecNo` = 349;

#실습3-21
select @@sql_mode;
set session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SELECT
`stdNo`,
`stdName`,
COUNT(`stdNo`) AS `수강신청 건수`,
SUM(`regTotalScore`) AS `종합점수`,
SUM(`regTotalScore`) / COUNT(`stdNo`) AS `평균`
FROM `Student` AS a
JOIN `Register` AS b
ON a.stdNo = b.regStdNo
GROUP BY `stdNo`
ORDER BY `stdNo`;

#실습3-22
select * from `Register` as a
join `Lecture` as b
ON a.regLecNo = b.lecNo;

#실습3-23
SELECT
`regStdNo`,
`regLecNo`,
`lecName`,
`regMidScore`,
`regFinalScore`,
`regTotalScore`,
`regGrade`
from `Register` as a
join `Lecture` as b
on a.regLecNo = b.lecNo;


#실습3-24
SELECT
COUNT(*) AS `사회복지 마케팅 수강 신청건수`,
AVG(`regTotalScore`) AS `사회복지 마케팅 평균`
FROM `Register` AS a 
JOIN `Lecture` AS b 
ON a.regLecNo = b.lecNo
where `regLecNo` = 349;

#실습3-25
SELECT
`regStdNo`,
`lecName`
FROM `Register` AS a 
JOIN `Lecture` AS b 
ON a.regLecNo = b.lecNo
where `regGrade` = 'A';

#실습3-26
SELECT * FROM `Student` AS a
JOIN `Register` AS b ON a.stdNo = b.regStdNo
JOIN `Lecture` AS C  on b.regLecNo = lecNo;

#실습3-27
SELECT
`stdNo`,
`stdName`,
`lecNo`,
`lecName`,
`regMidScore`,
`regFinalScore`,
`regTotalScore`,
`regGrade`
FROM `Student` AS a 
join `Register` as b on a.stdNo = b.regStdNo
join `Lecture` as c on b.regLecNo = c.lecNo
ORDER BY `regTotalScore` DESC;

#실습3-28
SELECT
`stdNo`,
`stdName`,
`lecName`,
`regTotalScore`,
`regGrade`
FROM `Student` AS a
join `Register` as b on a.stdNo = b.regStdNo
join `Lecture` as c on b.regLecNo = c.lecNo
WHERE `regGrade` = "F";

#실습3-29
SELECT
`stdNo`,
`stdName`,
SUM(`lecCredit`) AS `이수학점`
FROM `Student` AS a
join `Register` as b on a.stdNo = b.regStdNo
join `Lecture` as c on b.regLecNo = c.lecNo
where `regGrade`<'F'
Group by `stdNo`;

#실습3-30
SELECT
`stdNo`,
`stdName`,
GROUP_CONCAT(`lecName`) AS `신청과목`,
GROUP_CONCAT(if(`regTotalScore` >= 60, `lecName`, null)) AS `이수과목`
FROM `Student` AS a
join `Register` as b on a.stdNo = b.regStdNo
join `Lecture` as c on b.regLecNo = c.lecNo
Group by `stdNo`;

