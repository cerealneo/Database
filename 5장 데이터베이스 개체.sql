# 날짜 : 2025/01/09
# 이름 : 이민성
# 내용 : 5장 데이터베이스 개체

#실습 5-1
SHOW INDEX FROM `User1`;
SHOW INDEX FROM `User2`;
SHOW INDEX FROM `User3`;

#실습 5-2
CREATE INDEX `idx_user1_uid` ON `User1`(`uid`);
ANALYZE TABLE `User1`;

#실습 5-3
DROP INDEX idx_user1_uid ON `User1`;

#실습 5-4
CREATE VIEW `vw_user1` AS (SELECT `name`, `hp`, `age` FROM `User1`);
CREATE VIEW `vw_user4_age_under30` AS (SELECT * FROM `User4` WHERE `age` < 30);





