#날짜 : 2025/02/24
#이름 : 이민성
#내용 : 6장 데이터 모델링

#6-2
insert INTO `Customer` VALUES ("c101","김유신","010-1234-1001","경남김해시","2023-01-01");
insert INTO `Customer` VALUES ("c102","김춘추","010-1234-1002","경남 경주시","2023-01-02");
insert INTO `Customer` VALUES ("c103","장보고","010-1234-1003","전남 완도군","2023-01-03");
insert INTO `Customer` VALUES ("c104","강감찬","010-1234-1004","서울시 관악구","2023-01-04");
insert INTO `Customer` VALUES ("c105","이순신","010-1234-1005","부산시 금정구","2023-01-05");

insert INTO `Product` VALUES (1,"새우깡",5000,1500,"농심");
insert INTO `Product` VALUES (2,"초코파이",2500,2500,"오리온");
insert INTO `Product` VALUES (3,"포카칩",3600,1700,"오리온");
insert INTO `Product` VALUES (4,"양파링",1250,1800,"농심");
insert INTO `Product` VALUES`order` (5,"죠리퐁",2200,NULL,"크라운");

insert INTO `Order`(`orderId`, `orderProduct`,`orderCount`,`orderDate`) VALUES ("c102",3,2,"2023-01-01 13:15:10");
insert INTO `Order`(`orderId`, `orderProduct`,`orderCount`,`orderDate`) VALUES ("c101",4,1,"2023-01-01 13:15:12");
insert INTO `Order`(`orderId`, `orderProduct`,`orderCount`,`orderDate`) VALUES ("c102",1,1,"2023-01-01 13:15:14");
insert INTO `Order`(`orderId`, `orderProduct`,`orderCount`,`orderDate`) VALUES ("c103",5,5,"2023-01-01 13:15:16");
insert INTO `Order`(`orderId`, `orderProduct`,`orderCount`,`orderDate`) VALUES ("c105",2,1,"2023-01-01 13:15:18");

#6-3
select 	
    `orderNo`,
    `name`,
    `prodName`,
    `orderCount`,
    `orderDate`    
from `Order` as a
join `Customer` as b on a.orderId = b.custId
join `Product` as c on a.orderProduct = c.prodNo;

select 	
    `orderNo`,
    `prodNo`,        
    `prodName`,
    `price`,
    `orderCount`,
    `orderDate`    
 from `Order` as a
join `Customer` as b on a.orderId = b.custId
join `Product` as c on a.orderProduct = c.prodNo
where `name`='김유신';


select 
	SUM(`price` * `orderCount`)
from `Order` as a
join `Product` as b on a.orderProduct = b.prodNo;

#6-5
insert INTO `bank_customer` VALUES ("730423-1000001","김유신",1,"010-1234-1001","경남 김해시");
insert INTO `bank_customer` VALUES ("730423-1000002","김춘추",1,"010-1234-1002","경남 경주시");
insert INTO `bank_customer` VALUES ("750423-1000003","장보고",1,"010-1234-1003","전남 완도군");
insert INTO `bank_customer` VALUES ("102-12-51094","(주)정보산업",2,"051-500-1004","부산시 부산진구");
insert INTO `bank_customer` VALUES ("930423-1000005","이순신",1,"010-1234-1001","서울 종로구");

insert INTO `bank_account` VALUES ("101-11-1001","S1","자유저축예금","730423-1000001",1550000,"2011-04-11");
insert INTO `bank_account` VALUES ("101-11-1002","S1","자유저축예금","930423-1000005",260000,"2011-05-12");
insert INTO `bank_account` VALUES ("101-11-1003","S1","자유저축예금","750423-1000003",75000,"2011-06-13");
insert INTO `bank_account` VALUES ("101-12-1001","S2","기업전용예금","102-12-51094",15000000,"2011-07-14");
insert INTO `bank_account` VALUES ("101-13-1001","S3","정기저축예금","730423-1000002",1200000,"2011-08-15");

insert INTO `bank_transaction`(`t_a_no`, `t__dist`,`t_amount`,`t_datetime`) VALUES ("101-11-1001",1,50000,"2023-01-01 13:15:10");
insert INTO `bank_transaction`(`t_a_no`, `t__dist`,`t_amount`,`t_datetime`) VALUES ("101-12-1001",2,1000000,"2023-01-02 13:15:12");
insert INTO `bank_transaction`(`t_a_no`, `t__dist`,`t_amount`,`t_datetime`) VALUES ("101-11-1002",3,260000,"2023-01-03 13:15:14");
insert INTO `bank_transaction`(`t_a_no`, `t__dist`,`t_amount`,`t_datetime`) VALUES ("101-11-1002",2,100000,"2023-01-04 13:15:16");
insert INTO `bank_transaction`(`t_a_no`, `t__dist`,`t_amount`,`t_datetime`) VALUES ("101-11-1003",3,75000,"2023-01-05 13:15:18");
insert INTO `bank_transaction`(`t_a_no`, `t__dist`,`t_amount`,`t_datetime`) VALUES ("101-11-1001",1,150000,"2023-01-05 13:15:28");

# 6-6
select 
	`c_no`,
	`c_name`,
	`c_phone`,
    `a_no`,
    `a_item_name`,
    `a_balance`
from `bank_customer` as a 
join `bank_account` as b on a.c_no = b.a_c_no;

select 
	`t_dist`,
    `t_amount`,
    `t_datetime`
from `bank_customer` as a 
join `bank_account` as b on a.c_no = b.a_c_no
join `bank_transaction` as c on b.a_no = c.t_a_no
where `c_name` = '이순신';

select 
	`c_no`,
    `c_name`,
    `a_no`,
    `a_balance`,
    `a_open_date`
from `bank_customer` as a 
join `bank_account` as b on a.c_no = b.a_c_no
where `c_dist`=1
order by `a_balance` desc
limit 1;

#6-8
insert INTO `Student` VALUES ("20201011","김유신","010-1234-1001",3,"경남 김해시");
insert INTO `Student` VALUES ("20201122","김춘추","010-1234-1002",3,"경남 경주시");
insert INTO `Student` VALUES ("20210213","장보고","010-1234-1003",2,"전남 완도군");
insert INTO `Student` VALUES ("20210324","강감찬","010-1234-1004",2,"서울 관악구");
insert INTO `Student` VALUES ("20220415","이순신","010-1234-1005",1,"서울 종로구");

insert INTO `Lecture` VALUES (101,"컴퓨터과학 개론",2,40,"본301");
insert INTO `Lecture` VALUES (102,"프로그래밍 언어",3,52,"본302");
insert INTO `Lecture` VALUES (103,"데이터베이스",3,56,"본303");
insert INTO `Lecture` VALUES (104,"자료구조",3,60,"본304");
insert INTO `Lecture` VALUES (105,"운영체제",3,52,"본305");

INSERT INTO `Register` (`regStdNo`, `regLecNo`,`regMidScore`,`regFinalScore`) VALUES ("20220415",101,60,30);
INSERT INTO `Register` (`regStdNo`, `regLecNo`,`regMidScore`,`regFinalScore`) VALUES ("20210324",103,54,36);
INSERT INTO `Register` (`regStdNo`, `regLecNo`,`regMidScore`,`regFinalScore`) VALUES ("20201011",105,52,28);
INSERT INTO `Register` (`regStdNo`, `regLecNo`,`regMidScore`,`regFinalScore`) VALUES ("20220415",102,38,40);
INSERT INTO `Register` (`regStdNo`, `regLecNo`,`regMidScore`,`regFinalScore`) VALUES ("20210324",104,56,32);
INSERT INTO `Register` (`regStdNo`, `regLecNo`,`regMidScore`,`regFinalScore`) VALUES ("20210213",103,48,40);

#6-9
select 
	`stdNo`,
    `stdName`,
    `stdHp`,
    `stdYear`
from `Student` as a
left join `Register` as b on a.stdNo = b.regStdNo
where `regStdNo` is null; 

select 
	`regStdNo`, 
    `regLecNo`, 
    `regMidScore`,
    `regFinalScore`,
    `regMidScore` + `regFinalScore` as `합`,
    case
		when (`regMidScore` + `regFinalScore` >= 90) then 'A'
		when (`regMidScore` + `regFinalScore` >= 80) then 'B'
		when (`regMidScore` + `regFinalScore` >= 70) then 'C'
		when (`regMidScore` + `regFinalScore` >= 60) then 'D'
	else 'F'
    end as `등급`
from `Register`;

select 
	`stdNo`,
    `stdName`,
    `stdYear`,
    `lecName`,
    `regMidScore`,
    `regFinalScore`,
    `regTotalScore`,
    `regGrade`
from `Student` as a
join `Register` as b on a.stdNo = b.regStdNo
join `Lecture` as c on b.regLecNo = c.lecNo
where `stdYear` = 2;