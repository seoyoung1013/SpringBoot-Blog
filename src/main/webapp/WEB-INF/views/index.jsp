<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>

<section class="jumbotron text-center">
    <div class="container">
      <h1>너와 내가 만나 우리가 되는 공간</h1>
      <p class="lead text-muted">스프링 부트를 활용한 국내 여행 동행자 매칭 웹 사이트입니다. <br>많은 사람들이 여행을 즐기고 있으며, <br> 적합한 여행 파트너를 찾는 것은 어려운 일입니다. <br> 이 웹 사이트를 통해 나와 맞는 동행자를 찾아 떠나세요!</p>
      <p>
        <a href="#" class="btn btn-primary my-2">Main call to action</a>
        <a href="#" class="btn btn-secondary my-2">Secondary action</a>
      </p>
    </div>
  </section>

<div class="container">
<c:forEach var="board" items="${boards.content}">
	<div class="card m-2">
		<div class="card-body">
			<h4 class="card-title">${board.title}</h4>
			<a href="/board/${board.id}" class="btn btn-primary">상세보기</a>
		</div>
	</div>
</c:forEach>

<ul class="pagination justify-content-center">
  <c:choose>
  	<c:when test="${boards.first}">
  		<li class="page-item disabled"><a class="page-link" href="?page=${boards.number-1}">Previous</a></li>
  	</c:when>
  	<c:otherwise>
  		<li class="page-item"><a class="page-link" href="?page=${boards.number-1}">Previous</a></li>
  	</c:otherwise>
  </c:choose>
  
    <c:choose>
  	<c:when test="${boards.last}">
  		<li class="page-item disabled"><a class="page-link" href="?page=${boards.number+1}">Next</a></li>
  	</c:when>
  	<c:otherwise>
  		<li class="page-item"><a class="page-link" href="?page=${boards.number+1}">Next</a></li>
  	</c:otherwise>
  </c:choose>  
</ul>
</div>

<%@ include file="layout/footer.jsp"%>


