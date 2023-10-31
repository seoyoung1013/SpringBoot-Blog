let index = {
	init: function(){
		$("#btn-save").on("click", ()=>{ 
			this.save();
		});
		$("#btn-delete").on("click", ()=>{ 
			this.deleteById();
		});
		$("#btn-update").on("click", ()=>{ 
			this.update();
		});
		$("#btn-reply-save").on("click", ()=>{ 
			this.replySave();
		});
		$("#btn-show-profile-Info").on("click", ()=>{ 
			this.showProfile();
		});
	},

	save: function(){
		let data = {
				title: $("#title").val(),
				content: $("#content").val()
		};
		
		$.ajax({ 
			type: "POST",
			url: "/api/board",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp){
			alert("글쓰기가 완료되었습니다.");
			location.href = "/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		}); 
	},
	
	deleteById: function(){
		let id = $("#id").text();
		
		$.ajax({ 
			type: "DELETE",
			url: "/api/board/"+id,
			dataType: "json"
		}).done(function(resp){
			alert("삭제가 완료되었습니다.");
			location.href = "/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		}); 
	},
	
	update: function(){
		let id = $("#id").val();
	
		let data = {
			title: $("#title").val(),
			content: $("#content").val(),
			travelWith: $("input[name='travelWith']:checked").val() 
		};
	
		$.ajax({ 
			type: "PUT",
			url: "/api/board/"+id,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp){
			alert("글수정이 완료되었습니다.");
			location.href = "/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		}); 
	},
	
	
	replySave: function(){
		let data = {
				userId: $("#userId").val(),
				boardId: $("#boardId").val(),
				content: $("#reply-content").val()
		};
		
		$.ajax({ 
			type: "POST",
			url: `/api/board/${data.boardId}/reply`,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp){
			alert("댓글작성이 완료되었습니다.");
			location.href = `/board/${data.boardId}`;
		}).fail(function(error){
			alert(JSON.stringify(error));
		}); 
	},
	
	replyDelete : function(boardId, replyId){
		$.ajax({ 
			type: "DELETE",
			url: `/api/board/${boardId}/reply/${replyId}`,
			dataType: "json"
		}).done(function(resp){
			alert("댓글삭제 성공");
			location.href = `/board/${boardId}`;
		}).fail(function(error){
			alert(JSON.stringify(error));
		}); 
	},

	showProfile: function() {
		// 'user/profile' 페이지로 userId를 POST 요청으로 전달하여 이동합니다.
		$("#btn-show-profile-Info").on("click", function() {
			let userId = $(this).data("user-id");

			$.ajax({
				type: "GET", // GET 요청으로 변경
				url: `/user/profileInfo`, // GET 요청을 수신할 엔드포인트 URL
				data: { userId: userId }
			}).done(function(resp) {
				location.href = `/user/profile`;
			}).fail(function(error) {
				// 실패 시 동작
				alert("실패");
			});  
		});
	},
	
	
	
}

index.init();