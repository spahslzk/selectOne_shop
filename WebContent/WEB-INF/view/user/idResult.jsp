<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="${root}css/idResult.css">
  <%@include file="../topBar.jsp"%>
</head>
<body>
	<div class="idResultbody">
		<div class="idResult">
			<h3>검색된 아이디는..&nbsp;&nbsp;&nbsp;&nbsp;</h3>
	  	<h3>&nbsp;&nbsp;&nbsp;${id}&nbsp;&nbsp;입니다</h3>
	  	<button class="btn" onclick="location.href='${root}login'">로그인화면으로 가기</button>
	  	<button class="btn" onclick="location.href='${root}user/pwSearch'">비밀번호찾기</button>
	  </div>
	  <%@include file="../footBar.jsp"%>
  </div>
</body>
</html>