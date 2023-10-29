<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">

	<form>
		<input type="hidden" id="id" value="${board.id}" />
		<div class="form-group">
			<input value="${board.title}" type="text" class="form-control" placeholder="Enter title" id="title">
		</div>

		<div class="form-group">
			<label for="travelWith">여행 동행자 매칭 여부</label>
			<div class="form-check">
				<input type="radio" name="travelWith" value="yes" ${board.travelWith == 'yes' ? 'checked' : ''} class="form-check-input" id="travelWithYes">
				 <label class="form-check-label" 	for="travelWithYes">매칭 성공</label>
			</div>
			<div class="form-check">
				<input type="radio" name="travelWith" value="no" ${board.travelWith == 'no' ? 'checked' : ''} class="form-check-input" id="travelWithNo">
				 <label class="form-check-label"  for="travelWithNo">매칭 전</label>
			</div>
		</div>


		<div class="form-group">
			<textarea class="form-control summernote" rows="5" id="content">${board.content}</textarea>
		</div>
	</form>
	<button id="btn-update" class="btn btn-primary">글수정완료</button>
</div>

<script>
	$('.summernote').summernote({
		tabsize : 2,
		height : 300
	});
</script>
<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>


