<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ko">
<title>Insert title here</title>
<link rel="stylesheet" href="${root}css/home1.css" />
<%@include file="topBar.jsp"%>
<c:set var="user" value="${sessionScope.loginUser}" />
<link 
	rel="stylesheet"
	href="${root}css/materialize.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/js/materialize.min.js"></script>
<script>
	$(document).ready(function() {
		$('.slider').slider();
	});
</script>
</head>
<body>
	<section class="main">
		<div class="slider">
			<ul class="slides">
				<li><img class="img1"> <!-- random image -->
					<div class="caption center-align">
						<h3>This is our big Tagline!</h3>
						<h5 class="light grey-text text-lighten-3">Here's our small
							slogan.</h5>
					</div></li>
				<li><img class="img2"> <!-- random image -->
					<div class="caption left-align">
						<h3>Left Aligned Caption</h3>
						<h5 class="light grey-text text-lighten-3">Here's our small
							slogan.</h5>
					</div></li>
				<li><img class="img3"> <!-- random image -->
					<div class="caption right-align">
						<h3>Right Aligned Caption</h3>
						<h5 class="light grey-text text-lighten-3">Here's our small
							slogan.</h5>
					</div></li>
				<li><img class="img4"> <!-- random image -->
					<div class="caption center-align">
						<h3>This is our big Tagline!</h3>
						<h5 class="light grey-text text-lighten-3">Here's our small
							slogan.</h5>
					</div></li>
			</ul>
		</div>
	</section>
	<section>
		<div class="newItems">
			<h2>New Items</h2>
			<c:forEach var="dto" items="${GdsNewItems}" begin="0" end="7">
				<div class="ItemsBody">
					<div class="Items">
					<a href="${root }shop?gds=${dto.gdsNum}">
						<div class="productimg">
								<img src="images/${dto.thumbImg}" width="S" height="300px"/>
						</div>
						<span class="gds_name">${dto.gdsName }</span><br>
						<span class="gds_price">${dto.gdsPrice}원</span><br>
						<span class="gds_date">${dto.regDate}</span>
					</div>
					</a>
				</div>
			</c:forEach>
			<button class="viewMore" onclick="location.href='${root}NewItems.do'">더보기</button>
		</div>
	</section>
	<section>
		<div class="BestItems">
			<h2>Best Items</h2>
			<c:forEach var="dto" items="${GdsBestItems}" begin="0" end="7">
				<div class="ItemsBody">
					<div class="Items">
					<a href="${root }shop?gds=${dto.gdsNum}">
						<div class="productimg">
							<img src="images/${dto.thumbImg}" width="S" height="300px"/>
						</div>
						<span class="gds_name">${dto.gdsName }</span><br>
						<span class="gds_price">${dto.gdsPrice}원</span><br>
						<span>${dto.rvavg}점</span>
					</div>
					</a>
				</div>
			</c:forEach>
			<button class="viewMore" onclick="location.href='${root}BestItems.do'">더 보기</button>
		</div>
	</section>
	<%@include file="footBar.jsp"%>
</body>
</html>
