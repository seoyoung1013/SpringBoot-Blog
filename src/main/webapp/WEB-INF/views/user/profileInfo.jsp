<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form>
		<div class="form-group">
			<label for="username">Username</label> <input type="text" value="${userInfo.username}" class="form-control"  readonly>
		</div>
		
		<div class="form-group">
			<label for="age">Age</label> <input type="text" value="${principal.user.age}" class="form-control" readonly >
		</div>

		<div class="form-group">
			<label for="email">Email</label> <input type="text" value="${userInfo.email}" class="form-control"  readonly>
		</div>

		<div class="form-group">
			<label for="location">Location</label> <input type="text" value="${userInfo.location}" class="form-control"  readonly>
		</div>

		<div class="form-group">
			<label for="travelStyle">Travel Style</label> <input type="text" value="${userInfo.travelStyle}" class="form-control" readonly >
		</div>


		<div class="form-group">
			<label for="mbti">MBTI</label>
			<input type="text" value="${userInfo.mbti}" class="form-control"  readonly>
		</div>

		<div class="form-group">
			<label for="introduction">Introduction</label>
			<textarea class="form-control" rows="3" id="introductionInput" readonly>${userInfo.introduction}</textarea>
		</div>
	</form>
</div>

<script src="/js/user.js"></script>

<%@ include file="../layout/footer.jsp"%>


