<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/resources/common/includeHead.jsp"%>
</head>
<body style="background-color: #EEEEEE;">
	<%@ include file="/resources/common/Navbar.jsp"%>

	<div id="mypage_wrap_cont">
		<%@ include file="/WEB-INF/views/mypage/leftlist.jsp"%>
		<div id="mypage_cont">
			<div id="reviewCont_wrap">
				<form method="post" name="reEdit">
					<input type="text" name="reservationNum" class="form-control-plaintext"
						value="${reservationNum}"
						style="width: 300px;" readonly><br>
					<div class="form-group">
						<label for="reviewCont">리뷰 내용</label>
						<textarea class="form-control" name="reviewContent" id="reviewCont" rows="3" required>${reviewPick.reviewContent}</textarea>
					</div>
					<select class="form-control" name="scope" required>
						<option selected>별점</option>
						<option value="1">★</option>
						<option value="2">★★</option>
						<option value="3">★★★</option>
						<option value="4">★★★★</option>
						<option value="5">★★★★★</option>
					</select><br>
					<button type="button" class="btn btn-warning" onclick="javascript:document.reEdit.submit();" style="float:right;">수정하기</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>