<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>


<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/image/bg_1.jpg');" data-stellar-background-ratio="0.5" id="section-home">
	<div class="overlay"></div>
	<div class="container">
		<div class="row align-items-center text-center">
			<div class="col-md">
				<h2 class="heading mb-2 display-4 font-light probootstrap-animate">회원 정보</h2>
			</div>
		</div>
	</div>
</section>


<section class="probootstrap_section">
	<div class="container">
		<form>
			<div class="form-group">
				<label for="username">Username</label> <input type="text" value="${userInfo.username}" class="form-control" readonly>
			</div>

			<div class="form-group">
				<label for="age">Age</label> <input type="text" value="${principal.user.age}" class="form-control" readonly>
			</div>

			<div class="form-group">
				<label for="email">Email</label> <input type="text" value="${userInfo.email}" class="form-control" readonly>
			</div>

			<div class="form-group">
				<label for="location">Location</label> <input type="text" value="${userInfo.location}" class="form-control" readonly>
			</div>

			<div class="form-group">
				<label for="travelStyle">Travel Style</label> <input type="text" value="${userInfo.travelStyle}" class="form-control" readonly>
			</div>


			<div class="form-group">
				<label for="mbti">MBTI</label> <input type="text" value="${userInfo.mbti}" class="form-control" readonly>
			</div>

			<div class="form-group">
				<label for="introduction">Introduction</label>
				<textarea class="form-control" rows="3" id="introductionInput" readonly>${userInfo.introduction}</textarea>
			</div>

			<div class="form-group">
				<h3>작성한 글 목록</h3>
				<table class="table">
					<thead>
						<tr>
							<th>글 번호</th>
							<th>글 제목</th>
							<th>글 내용</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boardContent}" var="board" varStatus="loop">
							<tr>
								<td><c:out value="${loop.index + 1}" /></td>
								<td><c:out value="${board.title}" /></td>
								<td><a href="/board/${board.id}" class="btn btn-primary">상세보기</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</form>
	</div>
</section>
<script src="/js/user.js"></script>

<%@ include file="../layout/footer.jsp"%>


