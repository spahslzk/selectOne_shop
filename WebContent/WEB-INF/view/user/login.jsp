<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="root" value="${pageContext.request.contextPath}/" />

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">  
  <title>Insert title here</title>
  <link rel="stylesheet" type="text/css" href="${root}/css/login.css">
  <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="loginbody">
  	<p><a href="${root}">HOME</a>&nbsp;>&nbsp;로그인</p>
	  <h2 class="title">Login</h2>
	 	<div>
	 		<form:form action="${root}login/login_proc" method="post" modelAttribute="loginUserDTO">
	 			<div>
	          <div>
	            <div class="input">
	              <form:input path="id" class="inputbar" type="text" placeholder="ID"/><br>
	              <form:errors path="id" class="error"></form:errors>
	            </div>
	          </div>
	          <div>
	            <div class="input">
	              <form:input path="pw1" class="inputbar" type="password" placeholder="PW"/><br>
	              <form:errors path="pw1" class="error"></form:errors>
	            </div>
	          </div>
	        </div>
	        <input class="loginbtn" type="submit" value="LOGIN"/>
	        <div class="move">
			 			<a href="${root}user/idSearch">아이디 찾기</a>/
			 			<a href="${root}user/pwSearch">비밀번호 찾기</a>
					</div>
	 		</form:form>
	 	</div>
	 	<hr>
	 	<div class="move">
 			<h2>회원가입</h2>
 			<button onclick="location.href='${root}join'" class="joinbtn">회원가입</button>
	 	</div>
 	</div>
</body>
</html>