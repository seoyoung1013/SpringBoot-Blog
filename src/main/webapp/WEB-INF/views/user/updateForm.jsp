<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form>
		<input type="hidden" id="id" value="${principal.user.id}" />
		<div class="form-group">
			<label for="username">Username</label> <input type="text" value="${principal.user.username}" class="form-control" placeholder="Enter username" id="username" readonly>
		</div>

		<c:if test="${empty principal.user.oauth}">
			<div class="form-group">
				<label for="password">Password</label> <input type="password" class="form-control" placeholder="Enter password" id="password">
			</div>
		</c:if>

		<div class="form-group">
			<label for="email">Email</label> <input type="email" value="${principal.user.email}" class="form-control" placeholder="Enter email" id="email" readonly>
		</div>

		<div class="form-group">
			<label for="location">Location</label> <input type="text" value="${principal.user.location}" class="form-control" placeholder="Enter location" id="location">
		</div>

		<div class="form-group">
			<label for="travelStyle">Travel Style</label> <input type="text" value="${principal.user.travelStyle}" class="form-control" placeholder="Enter travel style" id="travelStyle">
		</div>


		<div class="form-group">

			<label for="mbti">MBTI</label>
			 <select id="mbti" class="form-control" name="mbti">
				<option value="ISTJ" ${principal.user.mbti == 'ISTJ' ? 'selected' : ''}>ISTJ</option>
				<option value="ISFJ" ${principal.user.mbti == 'ISFJ' ? 'selected' : ''}>ISFJ</option>
				<option value="INFJ" ${principal.user.mbti == 'INFJ' ? 'selected' : ''}>INFJ</option>
				<option value="INTJ" ${principal.user.mbti == 'INTJ' ? 'selected' : ''}>INTJ</option>
				<option value="ISTP" ${principal.user.mbti == 'ISTP' ? 'selected' : ''}>ISTP</option>
				<option value="ISFP" ${principal.user.mbti == 'ISFP' ? 'selected' : ''}>ISFP</option>
				<option value="INFP" ${principal.user.mbti == 'INFP' ? 'selected' : ''}>INFP</option>
				<option value="INTP" ${principal.user.mbti == 'INTP' ? 'selected' : ''}>INTP</option>
				<option value="ESTP" ${principal.user.mbti == 'ESTP' ? 'selected' : ''}>ESTP</option>
				<option value="ESFP" ${principal.user.mbti == 'ESFP' ? 'selected' : ''}>ESFP</option>
				<option value="ENFP" ${principal.user.mbti == 'ENFP' ? 'selected' : ''}>ENFP</option>
				<option value="ENTP" ${principal.user.mbti == 'ENTP' ? 'selected' : ''}>ENTP</option>
				<option value="ESTJ" ${principal.user.mbti == 'ESTJ' ? 'selected' : ''}>ESTJ</option>
				<option value="ESFJ" ${principal.user.mbti == 'ESFJ' ? 'selected' : ''}>ESFJ</option>
				<option value="ENFJ" ${principal.user.mbti == 'ENFJ' ? 'selected' : ''}>ENFJ</option>
				<option value="ENTJ" ${principal.user.mbti == 'ENTJ' ? 'selected' : ''}>ENTJ</option>
			</select>
		</div>

	</form>
	<button id="btn-update" class="btn btn-primary">회원수정완료</button>
</div>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>


