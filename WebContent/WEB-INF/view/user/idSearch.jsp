<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${root}css/Search.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/home.css" />
<c:set var="user" value="${sessionScope.loginUser}" />
<%@include file="../topBar.jsp"%>
</head>
<body>
	<div class="Search">
		<div class="Searchmain">
			<form:form action="${root }user/idSearch_proc" modelAttribute="idsearchUserDTO">
				<h2 class="Searchtitle">IdSearch</h2>
				<div class="Searchbody">
					<h3 class="searchname">이름</h3>
					<form:input path="name" name="name" class="searchinput" placeholder="Name" /><br>
					<form:errors path="name" class="error"></form:errors>
					<br>
					<h3 class="searchname">E-Mail</h3>
					<form:input path="email" name="email" class="searchinput" placeholder="Email" /><br>
					<form:errors path="email" class="error"></form:errors>
					<br>
					<h3 class="searchname">전화번호</h3>
					<form:input path="tel" name="tel" class="searchinput" placeholder="Tel" /><br>
					<form:errors path="tel" class="error"></form:errors>
					<br>
					<form:errors path="idSearch" id="mainError" class="error"></form:errors>
					<div class="move">
						<input class="movebtn" type="submit" value="찾기">
						<button class="movebtn" onclick="location.href='${root}/'" type="button">취소</button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<%@include file="../footBar.jsp"%>
</body>
</html>