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

<div class="container">
    <h1 class="mt-5">인기 여행자</h1>
    <div class="row mt-4">
        <%-- 여행자 정보를 반복해서 표시 --%>
        <c:forEach var="traveler" items="${popularTravelers}">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="${traveler.profileImageUrl}" class="card-img-top" alt="Traveler Image">
                    <div class="card-body">
                        <h5 class="card-title">${traveler.name}</h5>
                        <p class="card-text">${traveler.bio}</p>
                        <a href="<c:url value="/traveler/${traveler.id}"/>" class="btn btn-primary">프로필 보기</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>