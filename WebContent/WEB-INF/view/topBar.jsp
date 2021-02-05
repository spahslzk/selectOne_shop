<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<c:set var="user" value="${sessionScope.loginUser}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root}css/topBar.css">
<title>TopBar - 수확행 - 행복을 거두자</title>
<c:set var="user" value="${sessionScope.loginUser}" />
<script type="text/javascript" src="${root }js/topBar.js" defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script>
	function loginCheck(){
		if (${user.check eq false}){
			return true;
			}
		return false;
	}

	function moveTargetPage(url){
		if(loginCheck()){
			alert("로그인 후 이용가능합니다");
			location.href = "${root }login";
		}else{
			location.href = "${root}"+url;
		}
	}
</script>
<script>
function moveTopMuen1() {
	let brandCode = $('.brandCode').eq('0').val();
	location.href='${root}shoplist.do?brandCode='+brandCode;	
}
function moveTopMuen2() {
	let brandCode = $('.brandCode').eq('1').val();
	location.href='${root}shoplist.do?brandCode='+brandCode;	
}
function moveTopMuen3() {
	let brandCode = $('.brandCode').eq('2').val();
	location.href='${root}shoplist.do?brandCode='+brandCode;	
}
function moveTopMuen4() {
	let brandCode = $('.brandCode').eq('3').val();
	location.href='${root}shoplist.do?brandCode='+brandCode;	
}
$(document).ready(function() {
	$('.brandCode0').eq('0').on('click',function(){
		let brandCode = $('.brandCode').eq('0').val();
		location.href='${root}shoplist.do?brandCode='+brandCode;
	});
	$('.brandCode0').eq('1').on('click',function(){
		let brandCode = $('.brandCode').eq('1').val();
		location.href='${root}shoplist.do?brandCode='+brandCode;
	});
	$('.brandCode0').eq('2').on('click',function(){
		let brandCode = $('.brandCode').eq('2').val();
		location.href='${root}shoplist.do?brandCode='+brandCode;
	});
	$('.brandCode0').eq('3').on('click',function(){
		let brandCode = $('.brandCode').eq('3').val();
		location.href='${root}shoplist.do?brandCode='+brandCode;
	});
	
	$('.kindsCode1').eq('0').on('click',function(){
		let kindsCode = $('.kindsCode').eq('0').val();
		location.href='${root}shopkindslist.do?kindsCode='+kindsCode;
	});
	$('.kindsCode1').eq('1').on('click',function(){
		let kindsCode = $('.kindsCode').eq('1').val();
		location.href='${root}shopkindslist.do?kindsCode='+kindsCode;
	});
	$('.kindsCode1').eq('2').on('click',function(){
		let kindsCode = $('.kindsCode').eq('2').val();
		location.href='${root}shopkindslist.do?kindsCode='+kindsCode;
	});
	$('.kindsCode1').eq('3').on('click',function(){
		let kindsCode = $('.kindsCode').eq('3').val();
		location.href='${root}shopkindslist.do?kindsCode='+kindsCode;
	});
	
	$('.brandCode1').eq('0').on('click',function(){
		let kindsCode = $('.kindsCode').eq('0').val();
		let brandCode = $('.brandCode').eq('0').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode1').eq('1').on('click',function(){
		let kindsCode = $('.kindsCode').eq('1').val();
		let brandCode = $('.brandCode').eq('1').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode1').eq('2').on('click',function(){
		let kindsCode = $('.kindsCode').eq('2').val();
		let brandCode = $('.brandCode').eq('2').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode1').eq('3').on('click',function(){
		let kindsCode = $('.kindsCode').eq('3').val();
		let brandCode = $('.brandCode').eq('3').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	
	$('.brandCode2').eq('0').on('click',function(){
		let kindsCode = $('.kindsCode').eq('0').val();
		let brandCode = $('.brandCode').eq('1').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode2').eq('1').on('click',function(){
		let kindsCode = $('.kindsCode').eq('1').val();
		let brandCode = $('.brandCode').eq('1').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode2').eq('2').on('click',function(){
		let kindsCode = $('.kindsCode').eq('2').val();
		let brandCode = $('.brandCode').eq('1').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode2').eq('3').on('click',function(){
		let kindsCode = $('.kindsCode').eq('3').val();
		let brandCode = $('.brandCode').eq('1').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	
	$('.brandCode3').eq('0').on('click',function(){
		let kindsCode = $('.kindsCode').eq('0').val();
		let brandCode = $('.brandCode').eq('2').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode3').eq('1').on('click',function(){
		let kindsCode = $('.kindsCode').eq('1').val();
		let brandCode = $('.brandCode').eq('2').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode3').eq('2').on('click',function(){
		let kindsCode = $('.kindsCode').eq('2').val();
		let brandCode = $('.brandCode').eq('2').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode3').eq('3').on('click',function(){
		let kindsCode = $('.kindsCode').eq('3').val();
		let brandCode = $('.brandCode').eq('2').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	
	$('.brandCode4').eq('0').on('click',function(){
		let kindsCode = $('.kindsCode').eq('0').val();
		let brandCode = $('.brandCode').eq('3').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode4').eq('1').on('click',function(){
		let kindsCode = $('.kindsCode').eq('1').val();
		let brandCode = $('.brandCode').eq('3').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode4').eq('2').on('click',function(){
		let kindsCode = $('.kindsCode').eq('2').val();
		let brandCode = $('.brandCode').eq('3').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	$('.brandCode4').eq('3').on('click',function(){
		let kindsCode = $('.kindsCode').eq('3').val();
		let brandCode = $('.brandCode').eq('3').val();
		location.href='${root}KBshoplist.do?brandCode='+brandCode+'&kindsCode='+kindsCode;
	});
	
});
</script>
</head>
<body>
	<header>
		<div class="topber">
			<div class="logo"></div>
			<div>
				<div class="category">
					<div>
						<a href="${root}shoplist">All Items</a><br>
						<div class="categorymenu">
							<ul>
								<li><a class="brandCode0" href="#">
										<input class="brandCode" type="hidden" value="1">Nike[나이키]
								</a><br></li>
								<li><a class="brandCode0" href="#">
										<input class="brandCode" type="hidden" value="2">Adidas[아디다스]
								</a><br></li>
								<li><a class="brandCode0" href="#">
										<input class="brandCode" type="hidden" value="3">Puma[퓨마]
								</a><br></li>
								<li><a class="brandCode0" href="#">
										<input class="brandCode" type="hidden" value="4">VANS[반스]
								</a><br></li>
							</ul>
						</div>
					</div>
					<div class="categorymenu">
						<a class="kindsCode1" href="#"><input
							class="kindsCode" type="hidden" value="11">Man</a><br>
						<ul>
							<li><a class="brandCode1" href="#"><input
									class="brandCode" type="hidden" value="1">Nike[나이키]</a><br></li>
							<li><a class="brandCode2" href="#"><input
									class="brandCode" type="hidden" value="2">Adidas[아디다스]</a><br></li>
							<li><a class="brandCode3" href="#"><input
									class="brandCode" type="hidden" value="3">Puma[퓨마]</a><br></li>
							<li><a class="brandCode4" href="#"><input
									class="brandCode" type="hidden" value="4">VANS[반스]</a><br></li>
						</ul>
					</div>
					<div class="categorymenu">
						<a class="kindsCode1" href="#"><input
							class="kindsCode" type="hidden" value="21">Woman</a><br>
						<ul>
							<li><a class="brandCode1" href="#"><input
									class="brandCode" type="hidden" value="1">Nike[나이키]</a><br></li>
							<li><a class="brandCode2" href="#"><input
									class="brandCode" type="hidden" value="2">Adidas[아디다스]</a><br></li>
							<li><a class="brandCode3" href="#"><input
									class="brandCode" type="hidden" value="3">Puma[퓨마]</a><br></li>
							<li><a class="brandCode4" href="#"><input
									class="brandCode" type="hidden" value="4">VANS[반스]</a><br></li>
						</ul>
					</div>
					<div class="categorymenu">
						<a class="kindsCode1" href="#"><input
							class="kindsCode" type="hidden" value="31">Kid</a><br>
						<ul>
							<li><a class="brandCode1" href="#"><input
									class="brandCode" type="hidden" value="1">Nike[나이키]</a><br></li>
							<li><a class="brandCode2" href="#"><input
									class="brandCode" type="hidden" value="2">Adidas[아디다스]</a><br></li>
							<li><a class="brandCode3" href="#"><input
									class="brandCode" type="hidden" value="3">Puma[퓨마]</a><br></li>
							<li><a class="brandCode4" href="#"><input
									class="brandCode" type="hidden" value="4">VANS[반스]</a><br></li>
						</ul>
					</div>
					<div class="categorymenu">
						<a class="kindsCode1" href="#"><input
							class="kindsCode" type="hidden" value="41">Unisex</a><br>
						<ul>
							<li><a class="brandCode1" href="#"><input
									class="brandCode" type="hidden" value="1">Nike[나이키]</a><br></li>
							<li><a class="brandCode2" href="#"><input
									class="brandCode" type="hidden" value="2">Adidas[아디다스]</a><br></li>
							<li><a class="brandCode3" href="#"><input
									class="brandCode" type="hidden" value="3">Puma[퓨마]</a><br></li>
							<li><a class="brandCode4" href="#"><input
									class="brandCode" type="hidden" value="4">VANS[반스]</a><br></li>
						</ul>
					</div>
				</div>
			</div>
			<form action="list.do" method="get">
				<div class="search">
					<div class="searchbody">
						<input
							type="text" autocomplete="off" class="search-input"
							name="keyword" id="keyword" value="${keyword}"
							placeholder="상품을 검색해주세요." /></input>
						<button class="search-icon" onclick="searchToggle(this, event);">
							<span></span>
						</button>
					</div>
					<span class="close" onclick="searchToggle(this, event);"></span>
				</div>
			</form>
		</div>
		<div class=topmeun>
			<div class="mymeun">
				<a href="${root}/">HOME</a>
				<a href="javascript:void(0);" onclick="moveTargetPage('myPage');">My Page</a>
				<a href="javascript:void(0);" onclick="moveTargetPage('userlike');">Wish List</a> 
				<a href="javascript:void(0);" onclick="moveTargetPage('cart');">장바구니</a>
			</div>
			<div class="login">
				<c:choose>
					<c:when test="${user.check eq false}">
						<a href="${root}login">로그인</a>
					</c:when>
					<c:when test="${user.check eq true}">
	 					${user.name}님 반갑습니다.
						<a href="${root}logout">로그아웃</a>
					</c:when>
				</c:choose>
			</div>
		</div>
	</header>
</body>
</html>