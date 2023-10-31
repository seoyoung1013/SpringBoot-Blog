<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>

<style>
  .news-card {
    height: 200px; /* 원하는 높이로 조정 */
    overflow: hidden;
  }

  .news-card .media-body {
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }
</style>

<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/image/bg_1.jpg');" data-stellar-background-ratio="0.5" id="section-home">
	<div class="overlay"></div>
	<div class="container">
		<div class="row align-items-center">
			<div class="col-md">
				<h2 class="heading mb-2 display-4 font-light probootstrap-animate">
					너와 내가 만나 <br> 우리가 되는 공간
				</h2>
				<p class="lead mb-5 probootstrap-animate"></p>
				<a href="onepage.html" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">시작하기</a>
			</div>
		</div>
	</div>
</section>

<section class="probootstrap_section" id="section-news">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">여행 동행자 모집 게시판</h2>
                <h4 class="font-light probootstrap-animate" >
					<em></em>
				</h4>
            </div>
        </div>
        <div class="row">
            <c:forEach var="board" items="${boards.content}">
                <div class="col-md-4">
                    <div class="media probootstrap-media d-flex align-items-stretch probootstrap-animate news-card">
                        <div class="media-body">
                            <h3>${board.title}</h3>
                            <p><a href="/board/${board.id}">Read More</a></p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <ul class="pagination justify-content-center" style="margin-top:40px">
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
</section>


<%@ include file="layout/footer.jsp"%>