# 너,나 그리고 우리
> SPRINGBOOT 여행 동행 매칭 플랫폼


SW,AI 경진대회 참가 프로젝트

## 세팅 SQL

MySQL 8.0

```sh
-- 유저이름@아이피주소
create user 'cos'@'%' identified by 'cos1234';
-- ON DB이름.테이블명
-- TO 유저이름@아이피주소
GRANT ALL PRIVILEGES ON *.* TO 'cos'@'%';
CREATE DATABASE blog CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
use blog;

show variables like 'c%';
```


## 🛠 개발 환경 설정

- Spring-Boot v2.17.4
- JDK 11
- MySQL 8.0
- STS 4.0

## 🎈 주요 기능

* 로그인 및 회원가입
  * 스프링 시큐리티와 JWT를 활용하여 사용자 인증과 세션 관리 기능을 구현
* 동행자 모집 게시판
  * 게시물의 생성, 읽기, 수정, 삭제(CRUD) 및 댓글 작성(CRD)을 통한 게시판 관리
* OpenAI API (ChatGPT 3.5)
  * 여행 정보 추천 인터페이스를 제공하여 사용자에게 정보 공유
* 국내 여행지 정보 제공
  * 공공데이터포털의 한국관광공사 데이터를 활용하여 국내 여행지 정보를 수집, 제공
* 수다 공간
  * Spring WebSocket을 활용하여 실시간 채팅 및 소셜 기능 구현

## ✨사용 기술 및 도구

1. Java: 주요 프로그래밍 언어로 사용.
2. HTML, JS, CSS, Bootstrap: 웹 프론트엔드 디자인과 개발을 위한 웹 기술 및 프레임워크.
3. JSP: JavaServer Pages를 활용한 웹 페이지 템플릿.
4. STS (Spring Tool Suite): 스프링 애플리케이션 개발을 위한 통합 개발 환경.
5. Spring Boot: 웹 애플리케이션 개발을 위한 스프링 프레임워크.
6. Maven: 프로젝트 빌드 및 종속성 관리 도구.
7. Tomcat: 웹 애플리케이션 호스팅을 위한 서블릿 컨테이너.
8. AJAX, jQuery: 웹 애플리케이션의 동적 요청과 클라이언트 측 스크립팅을 처리하는 웹 기술.
9. MySQL: 관계형 데이터베이스 관리 시스템.
10. DBeaver: 데이터베이스 관리 및 개발 도구.
11. JSON: 경량 데이터 교환 형식.
12. JWT (JSON Web Tokens): 사용자 인증 및 보안 토큰 생성에 사용되는 표준 기술.
13. OpenAI: 인공 지능 API를 통해 ChatGPT 3.5를 활용.
14. JPA: 자바 영속성 API를 사용하여 객체-관계 매핑.
15. MVC 패턴: Model-View-Controller 아키텍처를 기반으로 웹 애플리케이션 구조화.
16. GitHub: 코드 협업 및 버전 관리 플랫폼.


<!-- Markdown link & img dfn's -->
[npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki
