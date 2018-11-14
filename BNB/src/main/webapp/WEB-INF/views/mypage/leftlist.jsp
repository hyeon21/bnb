<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>left_list</title>
<%@ include file="/resources/common/includeHead.jsp"%>
</head>
<body>
	<div id="left_list">
		<div id="list">
			<ul>
				<li class="mypage_list"><i class="fas fa-user-circle"></i>&ensp;<a
					href="${pageContext.request.contextPath}/mypage">프로필</a></li>
				<li class="mypage_list"><i class="fas fa-heart"
					style="color: #EB0000"></i>&ensp;<a href="${pageContext.request.contextPath}/wish">즐겨찾기</a></li>
				<li class="mypage_list"><i class="fas fa-history"
					style="color: #0064FF"></i>&ensp;<a href="${pageContext.request.contextPath}/history">히스토리</a></li>
				<li class="mypage_list"><i class="fas fa-star"
					style="color: #FFB400"></i>&ensp;<a
					href="${pageContext.request.contextPath}/review">후기</a></li>
			</ul>
		</div>
	</div>
</body>
</html>