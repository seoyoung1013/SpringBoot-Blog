<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('/image/bg_1.jpg');" data-stellar-background-ratio="0.5" id="section-home">
	<div class="overlay"></div>
	<div class="container">
		<div class="row align-items-center text-center">
			<div class="col-md">
				<h2 class="heading mb-2 display-4 font-light probootstrap-animate">여행 동행자 모집 게시판 글쓰기</h2>
			</div>
		</div>
	</div>
</section>

<section class="probootstrap_section">
	<div class="container">
		<form>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter title" id="title">
			</div>

			<div class="form-group">
				<textarea class="form-control summernote" rows="5" id="content"></textarea>
			</div>
		</form>
		<button id="btn-save" class="btn btn-primary">글쓰기완료</button>
	</div>
</section>
<script>
	$('.summernote').summernote({
		tabsize : 2,
		height : 300
	});
</script>
<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>