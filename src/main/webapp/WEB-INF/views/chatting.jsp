<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="layout/header.jsp"%>
<link rel='stylesheet' type='text/css' href='/css/chatt.css'>


<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/image/bg_1.jpg');" data-stellar-background-ratio="0.5" id="section-home">
	<div class="overlay"></div>
	<div class="container">
		<div class="row align-items-center text-center">
			<div class="col-md">
				<h2 class="heading mb-2 display-4 font-light probootstrap-animate">여행자들과의 수다 공간</h2>
			</div>
		</div>
	</div>
</section>

<div id='chatt'>
	<h1>WebSocket Chatting</h1>
	<label>여행자들의 공간에서 사용하실 별명을 써주세요</label> <br> <input type='text' id='mid' placeholder='홍길동' style="margin-top: 20px; margin-bottom: 20px;"> 
	<input type='button' value='적용하기' id='btnLogin' style="margin-top: 20px; margin-bottom: 20px;"> <br />
	<div id='talk'></div>
	<div id='sendZone'>
		<textarea id='msg' placeholder='대화 내용을 작성해주세요.' style="margin-top: 20px"></textarea>
		<input type='button' value='전송' id='btnSend' style="margin-top: 20px">
	</div>
</div>
<script src='/js/chatt.js'></script>
<%@ include file="layout/footer.jsp"%>
