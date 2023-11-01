<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>

<main role="main">

	<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/image/bg_1.jpg');" data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center text-center">
				<div class="col-md">
					<h2 class="heading mb-2 display-4 font-light probootstrap-animate">ChatGPT가 추천해주는 국내 여행 장소는?</h2>
				</div>
			</div>
		</div>
	</section>

	<section class="probootstrap-section-half d-md-flex" id="section-about">
		<div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(https://cdn.lecturernews.com/news/photo/201810/7596_19378_5522.jpg)"></div>
		<div class="probootstrap-text">
			<div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
				<h5 class="heading mb-4" style="letter-spacing: 5px;">${result}</h5>
			</div>
		</div>
	</section>
</main>

<%@ include file="layout/footer.jsp"%>
