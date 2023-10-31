<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../layout/header.jsp"%>


<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/image/bg_1.jpg');" data-stellar-background-ratio="0.5" id="section-home">
	<div class="overlay"></div>
	<div class="container">
		<div class="row align-items-center text-center">
			<div class="col-md">
				<h2 class="heading mb-2 display-4 font-light probootstrap-animate">국내 여행 추천 장소</h2>
			</div>
		</div>
	</div>
</section>


<section class="probootstrap_section" id="section-city-guides">
	<div class="container">

		<div class="row mb-3">
			<c:forEach var="tour" items="${tourInfo.content}">
				<div class="col-md-6">
					<div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
						<div class="probootstrap-media-image" style="background-image: url(${tour.firstimage})"></div>
						<div class="media-body">
							<h5 class="mb-3">${tour.title}</h5>
							<p>${tour.addr1}${tour.addr2}</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<ul class="pagination justify-content-center">
			<c:choose>
				<c:when test="${tourInfo.first}">
					<li class="page-item disabled"><a class="page-link" href="?page=${tourInfo.number-1}">Previous</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="?page=${tourInfo.number-1}">Previous</a></li>
				</c:otherwise>
			</c:choose>

			<c:choose>
				<c:when test="${tourInfo.last}">
					<li class="page-item disabled"><a class="page-link" href="?page=${tourInfo.number+1}">Next</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="?page=${tourInfo.number+1}">Next</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</section>
<script src="/js/tour.js"></script>
<%@ include file="../layout/footer.jsp"%>
