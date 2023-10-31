<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>You , Me And We</title>
<meta name="description" content="Free Bootstrap 4 Theme by ProBootstrap.com">
<meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">


<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

<link rel="stylesheet" href="/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/fonts/ionicons/css/ionicons.min.css">

<link rel="stylesheet" href="/css/owl.carousel.min.css">

<link rel="stylesheet" href="/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="/css/select2.css">


<link rel="stylesheet" href="/css/helpers.css">
<link rel="stylesheet" href="/css/style.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<body>


	<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
		<div class="container">
			<a class="navbar-brand" href="/">너 , 나 그리고 우리</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
				<span><i class="ion-navicon"></i></span>
			</button>
			<div class="collapse navbar-collapse" id="probootstrap-menu">
				<c:choose>
					<c:when test="${empty principal}">
						<!-- 로그인하지 않은 사용자를 위한 드롭다운 버튼 -->
						<ul class="navbar-nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="/">홈</a></li>
							<li class="nav-item"><a class="nav-link" href="/showResult">오늘의 추천 여행</a></li>
							<li class="nav-item"><a class="nav-link" href="/showTour">국내 여행지</a></li>
							<!-- <li class="nav-item"><a class="nav-link" href="travel.html">인기 여행자</a></li> -->
							<li class="nav-item"><a class="nav-link" href="/mychatt">수다 공간</a></li>
							<li class="nav-item">
								<div class="dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="loginDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 로그인 </a>
									<div class="dropdown-menu" aria-labelledby="loginDropdown">
										<a class="dropdown-item" href="/auth/loginForm">로그인</a> <a class="dropdown-item" href="/auth/joinForm">회원가입</a>
									</div>
								</div>
							</li>
						</ul>
					</c:when>
					<c:otherwise>
						<!-- 로그인한 사용자를 위한 드롭다운 버튼 -->
						<ul class="navbar-nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="/">홈</a></li>
							<li class="nav-item"><a class="nav-link" href="/showResult">오늘의 추천 여행</a></li>
							<li class="nav-item"><a class="nav-link" href="/showTour">국내 여행지</a></li>
							<li class="nav-item"><a class="nav-link" href="travel.html">인기 여행자</a></li>
							<li class="nav-item"><a class="nav-link" href="/mychatt">수다 공간</a></li>
							<li class="nav-item">
								<div class="dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role "button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 회원 관리 </a>
									<div class="dropdown-menu" aria-labelledby="userDropdown">
										<a class="dropdown-item" href="/board/saveForm">계획 작성</a> <a class="dropdown-item" href="/user/updateForm">회원 정보</a> <a class="dropdown-item" href="/logout">로그아웃</a>
									</div>
								</div>
							</li>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>