# 날짜 : 2025/01/06
# 이름 : 이민성
# 내용 : 1장 데이터베이스 설치 및 생성

# 실습 1-1
CREATE DATABASE `StudyDB1`;
DROP DATABASE `StudyDB1`;

#실습 1-2
CREATE USER 'DPSDY1'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON StudyDB.* TO 'dpsdy1'@'%';
FLUSH PRIVILEGES;

#실습 1-3
ALTER USER 'dpsdy1'@'%' IDENTIFIED BY 'abc1234';
DROP USER 'dpsdy1'@'%';
FLUSH PRIVILEGES;



