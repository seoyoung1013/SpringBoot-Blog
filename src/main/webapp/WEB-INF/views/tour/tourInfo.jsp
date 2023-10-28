<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../layout/header.jsp" %>

<section class="jumbotron text-center">
    <div class="container">
        <h1>국내 여행 추천 장소</h1>
    </div>
</section>

<div class="container">
    <c:forEach var="tour" items="${tourInfo.content}">
        <div class="card m-2">
            <div class="card-body">
                <img src="${tour.firstimage}" alt="${tour.title}" style="width: 200px; height: 150px;">
                <h4 class="card-title">${tour.title}</h4>
                <h5 class="card-content">주소</h5>
                <h6 class="card-content">${tour.addr1} ${tour.addr2}</h6>
            </div>
        </div>
    </c:forEach>

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

<script src="/js/tour.js"></script>
<%@ include file="../layout/footer.jsp" %>
