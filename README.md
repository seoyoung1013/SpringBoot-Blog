# SpringBoot Project
스프링 부트 with JPA

SW,AI 경진대회 참가 프로젝트

# 스프링 SQL

### MySQL DB 및 사용자 생성

```sql
-- 유저이름@아이피주소
create user 'cos'@'%' identified by 'cos1234';
-- ON DB이름.테이블명
-- TO 유저이름@아이피주소
GRANT ALL PRIVILEGES ON *.* TO 'cos'@'%';
CREATE DATABASE blog CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
use blog;

show variables like 'c%';
```
