#날짜 : 2025/02/25
#이름 : 이민성
#내용 : 데이터베이스 모델링 실습1

insert INTO `User` VALUES ("user1","김유신","1976-01-21","M","010-1101-1976","kimys@naver.com",7000,1,"서울","2022-01-10 10:50:12");
insert INTO `User` VALUES ("user2","계백","1975-06-11","M","010-1102-1975",null,5650,1,"서울","2022-01-10 10:50:12");
insert INTO `User` VALUES ("user3","김춘추","1989-05-30","M","010-1103-1989",null,4320,2,"서울","2022-01-10 10:50:12");
insert INTO `User` VALUES ("user4","이사부","1979-04-13","M","010-2101-1979","leesabu@gmail.com",0,1,"서울","2022-01-10 10:50:12");
insert INTO `User` VALUES ("user5","장보고","1966-09-12","M","010-2104-1966","jangbg@naver.com",3000,4,"대전","2022-01-10 10:50:12");
insert INTO `User` VALUES ("user6","선덕여왕","1979-07-28","M","010-3101-1979","gueen@naver.com",15840,2,"대전","2022-01-10 10:50:12");
insert INTO `User` VALUES ("user7","강감찬","1984-06-15","F","010-4101-1984","kang@daum.net",3610,0,"대구","2022-01-10 10:50:12");
insert INTO `User` VALUES ("user8","신사임당","1965-10-21","M","010-5101-1965","sinsa@gmail.com",0,1,"대구","2022-01-10 10:50:12");
insert INTO `User` VALUES ("user9","이이","1972-11-28","F","010-6101-1972","leelee@nate.com",0,3,"부산","2022-01-10 10:50:12");
insert INTO `User` VALUES ("user10","허난설현","1992-09-07","F","010-7103-1992",null,0,3,"광주","2022-01-10 10:50:12");

insert INTO `Point`(`userId`, `point`,`pointDesc`,`pointDate`) VALUES ("user1",1000,"회원가입 1000 적립","2022-01-10 10:50:12");
insert INTO `Point`(`userId`, `point`,`pointDesc`,`pointDate`) VALUES ("user1",6000,"상품구매 5% 적립","2022-01-10 10:50:12");
insert INTO `Point`(`userId`, `point`,`pointDesc`,`pointDate`) VALUES ("user3",2820,"상품구매 5% 적립","2022-01-10 10:50:12");
insert INTO `Point`(`userId`, `point`,`pointDesc`,`pointDate`) VALUES ("user7",3610,"상품구매 5% 적립","2022-01-10 10:50:12");
insert INTO `Point`(`userId`, `point`,`pointDesc`,`pointDate`) VALUES ("user5",3000,"이벤트 응모 3000 적립","2022-01-10 10:50:12");
insert INTO `Point`(`userId`, `point`,`pointDesc`,`pointDate`) VALUES ("user2",1000,"회원가입 1000 적립","2022-01-10 10:50:12");
insert INTO `Point`(`userId`, `point`,`pointDesc`,`pointDate`) VALUES ("user2",2000,"이벤트 응모 2000 적립","2022-01-10 10:50:12");
insert INTO `Point`(`userId`, `point`,`pointDesc`,`pointDate`) VALUES ("user2",2650,"상품구매 5% 적립","2022-01-10 10:50:12");
insert INTO `Point`(`userId`, `point`,`pointDesc`,`pointDate`) VALUES ("user3",1500,"이벤트 응모 1500 적립","2022-01-10 10:50:12");
insert INTO `Point`(`userId`, `point`,`pointDesc`,`pointDate`) VALUES ("user6",15840,"상품구매 2% 적립","2022-01-10 10:50:12");

insert into `Seller` values( 10001, '(주)다팔아', '01-201-1976', '정우성', '서울');
insert into `Seller` values( 10002, '판매의민족', '02-102-1975', '이정재', '서울');
insert into `Seller` values( 10003, '멋남', '031-103-1989', '원빈', '경기');
insert into `Seller` values( 10004, '스타일살아', '032-201-1979', '이나영', '경기');
insert into `Seller` values( 10005, '(주)삼성전자', '02-214-1966', '장동건', '서울');
insert into `Seller` values( 10006, '복실이옷짱', '051-301-1979', '고소영', '부산');
insert into `Seller` values( 10007, '컴퓨존(주)', '055-401-1984', '유재석', '대구');
insert into `Seller` values( 10008, '(주)LG전자', '02-511-1965', '강호동', '서울');
insert into `Seller` values( 10009, '굿바디스포츠', '080-6101-1972', '조인성', '부산');
insert into `Seller` values( 10010, '누리푸드', '051-710-1992', '강동원', '부산');

insert into `category` values( 10, '여성의류패션');
insert into `category` values( 11, '남성의류패션');
insert into `category` values( 12, '식품·생필품');
insert into `category` values( 13, '취미·반려견');
insert into `category` values( 14, '홈·문구');
insert into `category` values( 15, '자동차·공구');
insert into `category` values( 16, '스포츠·건강');
insert into `category` values( 17, '컴퓨터·가전·디지털');
insert into `category` values( 18, '여행');
insert into `category` values( 19, '도서');

insert into `product` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodStock`, `prodPrice`, `prodSold`, `prodDiscount`) values( 100101, 11,10003, '반팔티 L~2XL', 869 , 25000, 132, 20);
insert into `product` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodStock`, `prodPrice`, `prodSold`, `prodDiscount`) values( 100110, 10,10004, '트레이닝 통바지', 1602, 38000,398 ,15 );
insert into `product` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodStock`, `prodPrice`, `prodSold`, `prodDiscount`) values( 110101, 10,10003, '신상 여성운동화', 160, 76000, 40, 5);
insert into `product` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodStock`, `prodPrice`, `prodSold`, `prodDiscount`) values( 120101, 12,10010, '암소 1등급 구이셋트 1.2kg', 0, 150000, 87,15 );
insert into `product` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodStock`, `prodPrice`, `prodSold`, `prodDiscount`) values( 120103, 12,10010, '바로구이 부채살 250g', 0, 21000,61 ,10 );
insert into `product` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodStock`, `prodPrice`, `prodSold`, `prodDiscount`) values( 130101, 13,10006, '[ANF] 식스프리 강아지 사료', 58, 56000,142 ,0 );
insert into `product` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodStock`, `prodPrice`, `prodSold`, `prodDiscount`) values( 130112, 13,10006, '중대형 사계절 강아지옷', 120, 15000, 80,0 );
insert into `product` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodStock`, `prodPrice`, `prodSold`, `prodDiscount`) values( 141001, 14,10001, '라떼 2인 소피/방수 패브릭', 0, 320000, 42,0 );
insert into `product` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodStock`, `prodPrice`, `prodSold`, `prodDiscount`) values( 170115, 17,10007, '지포스 3080 그래픽 카드', 28, 900000, 12,12 );
insert into `product` (`prodNo`, `cateNo`, `sellerNo`, `prodName`, `prodStock`, `prodPrice`, `prodSold`, `prodDiscount`) values( 160103, 16,10009, '치닝디핑 33BR 철봉', 32, 120000,28 ,0 );

insert into`Order` values('22010210001', 'user2', 52300, '서울시 마포구 121', 1, now());
insert into`Order` values('22010210002', 'user3', 56700, '서울시 강남구 21-1', 1, now());
insert into`Order` values('22010210010', 'user4', 72200, '서울시 강서구 큰대로 38',2 , now());
insert into`Order` values('22010310001', 'user5', 127000, '경기도 광주시 초월로 21',1 , now());
insert into`Order` values('22010310100', 'user1', 120000, '경기도 수원시 120번지',0 , now());
insert into`Order` values('22010410101', 'user6', 792000, '부산시 남구 21-1',2 , now());
insert into`Order` values('22010510021', 'user7', 92200, '부산시 부산진구 56 10층', 4, now());
insert into`Order` values('22010510027', 'user8', 112000, '대구시 팔달로 19', 3, now());
insert into`Order` values('22010510031', 'user10', 792000, '대전시 한밭로 24-1',2 , now());
insert into`Order` values('22010710110', 'user9', 94500, '광주시 충열로 11', 1, now());

insert into `OrderItem` values( 1, '22010210001', 100110 , 38000, 15, 1);
insert into `OrderItem` values( 2, '22010210001' ,100101 , 25000, 20, 1);
insert into `OrderItem` values( 3, '22010210002' ,120103 , 21000, 10,3 );
insert into `OrderItem` values( 4, '22010310001' ,130112 , 15000, 0,1 );
insert into `OrderItem` values( 5, '22010310001' ,130101 , 56000, 0,2 );
insert into `OrderItem` values( 6, '22010210010' ,110101 , 76000, 5, 1);
insert into `OrderItem` values( 7, '22010310100' ,160103 , 120000, 0,1 );
insert into `OrderItem` values( 8, '22010410101' ,170115 , 900000, 12 ,1 );
insert into `OrderItem` values( 9, '22010510021' ,110101 , 76000, 5,1 );
insert into `OrderItem` values(10, '22010510027' ,130101 , 56000, 0,2 );
insert into `OrderItem` values(11, '22010510021' ,100101 , 25000, 20,1 );
insert into `OrderItem` values(12, '22010510031' ,170115 , 900000, 12,1 );
insert into `OrderItem` values(13, '22010710110' ,120103 , 21000, 10,5 );

insert into `Cart` values( 1, 'user1', 100101, 1,now());
insert into `Cart` values( 2, 'user1', 100110, 2,now());
insert into `Cart` values( 3, 'user3', 120103, 1,now());
insert into `Cart` values( 4, 'user4', 130112, 1,now());
insert into `Cart` values( 5, 'user5', 130101, 1,now());
insert into `Cart` values( 6, 'user2', 110101, 3,now());
insert into `Cart` values( 7, 'user2', 160103, 1,now());
insert into `Cart` values( 8, 'user2', 170115, 1,now());
insert into `Cart` values( 9, 'user3', 110101, 1,now());
insert into `Cart` values( 10, 'user6', 130101, 1,now());

#문제1
SELECT 
	`userName`,
	`prodName`,
	`cartProdCount`
FROM `Cart` AS a
JOIN `User` AS b ON a.userId = b.userId
JOIN `Product` AS c ON a.prodNo = c.prodNo
WHERE `cartProdCount` >= 2;

#문제2
SELECT 
	`prodNo`,
	`cateName`,
	`prodName`,
	`prodPrice`,
	`sellerManager`,
	`sellerPhone`
FROM `Product` AS a
JOIN `Category` AS b ON a.cateNo = b.cateNo
JOIN `Seller` AS c ON a.sellerNo = c.sellerNo;

#문제3
SELECT 
	a.`userId`,
	`userName`,
	`userHp`,
	`userPoint`,
	IF(SUM(`point`) IS NULL, 0, SUM(`point`)) AS `적립포인트 총합`
FROM `User` AS a
LEFT JOIN `Point` AS b ON a.userId = b.userId
GROUP BY a.`userId`;

#문제4
SELECT
	a.orderNo,
	a.userId,
	b.userName,
	a.orderTotalPrice,
	a.orderDate 
FROM `Order` AS a
JOIN `User` AS b ON a.userId = b.userId
WHERE `orderTotalPrice` >= 100000
ORDER BY `orderTotalPrice` DESC, `userName` ASC;

#문제5
SELECT
	a.orderNo,
	ANY_VALUE(c.userId),
	ANY_VALUE(c.userName),
	GROUP_CONCAT(`prodName` SEPARATOR ',') AS `상품명`,
	ANY_VALUE(`orderDate`)
FROM `Order` AS a
JOIN `OrderItem` AS b ON a.orderNo = b.orderNo
JOIN `User` AS c ON a.userId = c.userId
JOIN `Product` AS d ON b.prodNo=d.prodNo
GROUP BY a.`orderNo`;

#문제6
SELECT 
	`prodNo`,
	`prodName`,
	`prodPrice`,
	`prodDiscount`,
	FLOOR(`prodPrice` * (1 - `prodDiscount` / 100)) AS `할인가`
FROM `Product` AS a;

#문제7
SELECT 
	a.prodNo,
	a.prodName,
	a.prodPrice,
	a.prodStock,
	b.sellerManager
FROM `Product` AS a
JOIN `Seller` AS b ON a.sellerNo=b.sellerNo
WHERE b.sellerManager='고소영';

#문제8
SELECT 
	a.sellerNo,
	a.sellerBizName,
	a.sellerManager,
	a.sellerPhone 
FROM `Seller` AS a
LEFT JOIN `Product` AS b ON a.sellerNo = b.sellerNo
WHERE `prodNo` IS NULL;

#문제9
SELECT 
	`orderNo`,
	sum(`할인가` * `itemCount`) as `최종총합`
FROM
(
	SELECT 
		*,
		FLOOR(`itemPrice` * (1 - `itemDiscount` / 100) * `itemCount`) AS `할인가`
	FROM `OrderItem`
) AS a
GROUP BY `orderNo`
HAVING `최종총합` >= 100000
ORDER BY `최종총합` DESC;

SELECT 
	`orderNo`,
	SUM(FLOOR(`itemPrice` * (1 - `itemDiscount` / 100) * `itemCount`)) AS `최종총합` 
FROM `OrderItem`
GROUP BY `orderNo`
HAVING `최종총합` >= 100000
ORDER BY `최종총합` DESC;

#문제10
SELECT 
	`userName`,
	GROUP_CONCAT(`prodName` SEPARATOR ',')
FROM `Order` AS a
JOIN `User` AS b ON a.userId=b.userId
JOIN `OrderItem` AS c ON a.orderNo=c.orderNo
JOIN `Product` AS d ON d.prodNo=c.prodNo
WHERE `userName` = '장보고';
