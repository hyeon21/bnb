<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/resources/common/includeHead.jsp"%>
<html>
<head>

<script>
$(document).ready(function() {
	$('#submitBtn').click(function() {
		$('#content').val($('#content').val().replace(/\n/g, '<br>'));
		$('#target').submit();
	});
});
</script>
</head>
<body>
<h1>게시글작성</h1>
<form method="post" id="target">
	<table>
		<tr>
			<th width="100">작성자</th>
			<td>
			<input type="hidden" value="${loginUser.userId}" name="userId" size="50" readonly/>
			<input type="text" value="${loginUser.nickName}" name="nickName" size="50" readonly/>
			</td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" size="50"
				 required="required"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea id="content" name="content" rows="10"
					 required="required"></textarea></td>
		</tr>
	</table>
	<br> <input type="submit" id="submitBtn" value="입력">
</form>
</body>
</html>