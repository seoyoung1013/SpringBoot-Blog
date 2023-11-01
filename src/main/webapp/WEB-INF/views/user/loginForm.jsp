<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tour Project</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <style>
        .navbar {
            background-color: #f8f9fa;
        }

        .navbar-brand {
            font-size: 24px;
        }

        .navbar-toggler {
            border: 1px solid #000;
        }

        .navbar-toggler-icon {
            background-color: #000;
        }

        .navbar-nav {
            margin-left: auto;
        }

        .nav-link {
            color: #000;
            font-size: 16px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-light">
    <a class="navbar-brand" href="/">You, Me and We</a>
    <ul class="navbar-nav me-auto">
            <li class="nav-item">
              <a class="nav-link" href="/">홈</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/showResult">오늘의 추천 여행</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/showTour">국내 여행 리스트</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/mychatt">여행자들의 수다 공간</a>
            </li>
            </ul>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <c:choose>
            <c:when test="${empty principal}">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <div class="dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="loginDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                로그인
                            </a>
                            <div class="dropdown-menu" aria-labelledby="loginDropdown">
                                <a class="dropdown-item" href="/auth/loginForm">로그인</a>
                                <a class="dropdown-item" href="/auth/joinForm">회원가입</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </c:when>
            <c:otherwise>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <div class="dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                회원 관리
                            </a>
                            <div class="dropdown-menu" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="/board/saveForm">글쓰기</a>
                                <a class="dropdown-item" href="/user/updateForm">회원정보</a>
                                <a class="dropdown-item" href="/logout">로그아웃</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </c:otherwise>
        </c:choose>
    </div>
</nav>
<br />

<style>
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .form-signin {
        width: 100%;
        max-width: 330px;
        padding: 30px;
        margin: 0 auto;
    }

    .form-signin .form-control {
        position: relative;
        box-sizing: border-box;
        height: auto;
        padding: 10px;
        font-size: 16px;
    }

    .form-signin .form-control:focus {
        z-index: 2;
    }

    .form-signin #btn-login {
        width: 100%;
    }

    .form-signin a {
        text-align: center;
        display: block;
        margin-top: 10px;
        margin-bottom:40px;'
    }

    .form-signin img {
        height: 38px;
    }
</style>

<div class="container">
    <form class="form-signin" action="/auth/loginProc" method="post">
        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center;">Please sign in</h1>
        <label for="username">Username</label>
        <input type="text"  id="username" class="form-control" placeholder="Enter username" required="" autofocus="" name="username" data-listener-added_615eccf4="true">
        <label for="password">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Enter password" id="password">
        <div class="checkbox mb-3">
            <label> <input type="checkbox" value="remember-me"> Remember me </label>
        </div>
        <button id="btn-login" class="btn btn-primary">로그인</button>
    </form>
</div>

<footer class="probootstrap_section probootstrap-border-top">
	<div class="container">
		<div class="row pt-5">
			<div class="col-md-12 text-center">
				<p class="probootstrap_font-14">
					&copy; 2017. All Rights Reserved. <br> Designed &amp; Developed by <a href="https://probootstrap.com/" target="_blank">ProBootstrap</a><small> (Don't remove credit link on this
						footer. See <a href="https://probootstrap.com/license/">license</a>)
					</small>
				</p>
				<p class="probootstrap_font-14">
					Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a>
				</p>
			</div>
		</div>
	</div>
</footer>

</body>
</html>