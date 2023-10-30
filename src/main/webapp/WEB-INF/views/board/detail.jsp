<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
	<button id="btn-show-profile" class="btn btn-info" data-user-id="${board.user.id}">작성자 정보</button>
	<c:choose>
		<c:when test="${board.user.id == principal.user.id}">
			<a href="/board/${board.id}/updateForm" class="btn btn-warning">수정</a>
			<button id="btn-delete" class="btn btn-danger">삭제</button>
		</c:when>
	</c:choose>

	<br /> <br />
	<div>
		글 번호 : <span id="id">
		<i>${board.id} </i>
		</span> 작성자 : <span>
		<i>${board.user.username} </i>
		</span> 동행자 매칭 여부 : <span id="matchingStatus"><i>${board.travelWith == 'yes' ? '매칭 성공' : '매칭 전'}</i></span>	
	</div>
		<!-- 좋아요 버튼 추가 -->
	<button id="btn-like" class="btn btn-success" onclick="toggleLike()">🤍 좋아요</button>
	
	<br />
	<div>
		<h3>${board.title}</h3>
	</div>
	<hr />
	<div>
		<div>${board.content}</div>
	</div>
	<hr />

	<div class="card">
		<form>
			<input type="hidden" id="userId" value="${principal.user.id}" /> <input type="hidden" id="boardId" value="${board.id}" />
			<div class="card-body">
				<textarea id="reply-content" class="form-control" rows="1"></textarea>
			</div>
			<div class="card-footer">
				<button type="button" id="btn-reply-save" class="btn btn-primary">등록</button>
			</div>
		</form>
	</div>
	<br />
	<div class="card">
		<div class="card-header">댓글 리스트</div>
		<ul id="reply-box" class="list-group">
			<c:forEach var="reply" items="${board.replys}">

				<li id="reply-${reply.id}" class="list-group-item d-flex justify-content-between">
					<div>${reply.content}</div>
					<div class="d-flex">
						<div class="font-italic">작성자 : ${reply.user.username} &nbsp;</div>
						<c:if test="${reply.user.id eq principal.user.id}">
							<button onClick="index.replyDelete(${board.id}, ${reply.id})" class="badge">삭제</button>
						</c:if>

					</div>
				</li>

			</c:forEach>
		</ul>
	</div>
</div>
<script src="/js/board.js"></script>
<script>
  var isLiked = false; // 좋아요 상태 여부를 나타내는 변수

  function toggleLike() {
    var likeButton = document.getElementById("btn-like");
    isLiked = !isLiked; // 좋아요 상태를 토글

    if (isLiked) {
      likeButton.innerHTML = "❤좋아요"; // 하트 채워진 상태
    } else {
      likeButton.innerHTML = "🤍 좋아요"; // 하트 비워진 상태
    }
  }
</script>
<%@ include file="../layout/footer.jsp"%>


