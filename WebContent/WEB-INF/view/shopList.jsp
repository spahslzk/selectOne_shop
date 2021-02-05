<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <link rel="stylesheet" href="css/home.css" /> -->
<%@include file="topBar.jsp"%>
<c:set var="user" value="${sessionScope.loginUser}" />
<link rel="stylesheet" href="${root}css/shopList.css">
</head>
<body>
<body>
	<c:choose>
		<c:when test="${not empty SearchResult}">
			<table id="searchResult">
				<tr>
					<td><strong>"${searchWord}"</strong> 키워드로 검색된 <strong>${totalRow}</strong>개의
						상품이 있습니다.</td>
				</tr>
			</table>
			<div class="list_main">
				<c:forEach var="dto" items="${SearchResult}">
					<a href="${root}shop?gds=${dto.gdsNum}">
						<div class="main-reg">
							<div class="inner-reg1">
								<img src="images/${dto.thumbImg}" width="400px" height="400px" />
							</div>
							<div class="inner-reg2">
								<span class="s_code">${dto.cateName}</span>
								<c:choose>
									<c:when test="${dto.gdsStock < 1 }">
										<span class="stock_state">Sold Out</span>
									</c:when>
									<c:when test="${dto.gdsStock < 30 }">
										<span class="stock_state">마감임박</span>
									</c:when>

								</c:choose>
								<span class="gds_name">${dto.gdsName }</span> <span
									class="gds_price">&#8361;${dto.gdsPrice } x 1ea</span> <a
									href="#"><span class="review">리뷰
										${dto.review_count}개</span></a>
							</div>
							<div class="inner-reg3">
								<div class="favorite-div">
									<c:choose>
										<c:when test="${dto.like eq false}">
											<div class="favorite" id="userlike" value="like">
												<img src="images/favorite_border.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
										<c:when test="${dto.like eq true}">
											<div class="favorite" id="userlike" value="dislike">
												<img src="images/favorite-black.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
									</c:choose>

								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</c:when>
		<c:when test="${not empty GdsBrandCodeList}">
			<div class="list_main">
				<c:forEach var="dto" items="${GdsBrandCodeList}">

					<a href="${root}shop?gds=${dto.gdsNum}">
						<div class="main-reg">
							<div class="inner-reg1">
								<img src="images/${dto.thumbImg}" width="400px" height="400px" />
							</div>
							<div class="inner-reg2">

								<span class="s_code">${dto.cateName}</span>
								<c:choose>
									<c:when test="${dto.gdsStock < 1 }">
										<span class="stock_state">Sold Out</span>
									</c:when>
									<c:when test="${dto.gdsStock < 30 }">
										<span class="stock_state">마감임박</span>
									</c:when>
								</c:choose>
								<br> <span class="gds_name">${dto.gdsName }</span><br>
								<span class="gds_price">&#8361;${dto.gdsPrice }</span> <a
									href="#"><span class="review">리뷰
										${dto.review_count}개</span></a>
							</div>
							<div class="inner-reg3">
								<div class="favorite-div">
									<c:choose>
										<c:when test="${dto.like eq false}">
											<div class="favorite" id="userlike" value="like">
												<img src="images/favorite_border.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
										<c:when test="${dto.like eq true}">
											<div class="favorite" id="userlike" value="dislike">
												<img src="images/favorite-black.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
									</c:choose>
								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</c:when>
		<c:when test="${not empty GdsKindsCodeList}">
			<div class="list_main">
				<c:forEach var="dto" items="${GdsKindsCodeList}">

					<a href="${root}shop?gds=${dto.gdsNum}">
						<div class="main-reg">
							<div class="inner-reg1">
								<img src="images/${dto.thumbImg}" width="400px" height="400px" />
							</div>
							<div class="inner-reg2">

								<span class="s_code">${dto.cateName}</span>
								<c:choose>
									<c:when test="${dto.gdsStock < 1 }">
										<span class="stock_state">Sold Out</span>
									</c:when>
									<c:when test="${dto.gdsStock < 30 }">
										<span class="stock_state">마감임박</span>
									</c:when>
								</c:choose>
								<br> <span class="gds_name">${dto.gdsName }</span><br>
								<span class="gds_price">&#8361;${dto.gdsPrice }</span> <a
									href="#"><span class="review">리뷰
										${dto.review_count}개</span></a>
							</div>
							<div class="inner-reg3">
								<div class="favorite-div">
									<c:choose>
										<c:when test="${dto.like eq false}">
											<div class="favorite" id="userlike" value="like">
												<img src="images/favorite_border.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
										<c:when test="${dto.like eq true}">
											<div class="favorite" id="userlike" value="dislike">
												<img src="images/favorite-black.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
									</c:choose>

								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</c:when>
		<c:when test="${not empty GdsKBCodeList}">
			<div class="list_main">
				<c:forEach var="dto" items="${GdsKBCodeList}">

					<a href="${root}shop?gds=${dto.gdsNum}">
						<div class="main-reg">
							<div class="inner-reg1">
								<img src="images/${dto.thumbImg}" width="400px" height="400px" />
							</div>
							<div class="inner-reg2">

								<span class="s_code">${dto.cateName}</span>
								<c:choose>
									<c:when test="${dto.gdsStock < 1 }">
										<span class="stock_state">Sold Out</span>
									</c:when>
									<c:when test="${dto.gdsStock < 30 }">
										<span class="stock_state">마감임박</span>
									</c:when>
								</c:choose>
								<br> <span class="gds_name">${dto.gdsName }</span><br>
								<span class="gds_price">&#8361;${dto.gdsPrice }</span> <a
									href="#"><span class="review">리뷰
										${dto.review_count}개</span></a>
							</div>
							<div class="inner-reg3">
								<div class="favorite-div">
									<c:choose>
										<c:when test="${dto.like eq false}">
											<div class="favorite" id="userlike" value="like">
												<img src="images/favorite_border.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
										<c:when test="${dto.like eq true}">
											<div class="favorite" id="userlike" value="dislike">
												<img src="images/favorite-black.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
									</c:choose>

								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</c:when>
		<c:when test="${not empty GdsInfoList}">
			<div class="list_main">
				<c:forEach var="dto" items="${GdsInfoList}">

					<a href="${root}shop?gds=${dto.gdsNum}">
						<div class="main-reg">
							<div class="inner-reg1">
								<img src="images/${dto.thumbImg}" width="400px" height="400px" />
							</div>
							<div class="inner-reg2">

								<span class="s_code">${dto.cateName}</span>
								<c:choose>
									<c:when test="${dto.gdsStock < 1 }">
										<span class="stock_state">Sold Out</span>
									</c:when>
									<c:when test="${dto.gdsStock < 30 }">
										<span class="stock_state">마감임박</span>
									</c:when>
								</c:choose>
								<br> <span class="gds_name">${dto.gdsName }</span><br>
								<span class="gds_price">&#8361;${dto.gdsPrice }</span> <a
									href="#"><span class="review">리뷰
										${dto.review_count}개</span></a>
							</div>
							<div class="inner-reg3">
								<div class="favorite-div">
									<c:choose>
										<c:when test="${dto.like eq false}">
											<div class="favorite" id="userlike" value="like">
												<img src="images/favorite_border.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
										<c:when test="${dto.like eq true}">
											<div class="favorite" id="userlike" value="dislike">
												<img src="images/favorite-black.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
									</c:choose>

								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</c:when>
		<c:when test="${not empty GdsNewItems}">
			<div class="list_main">
				<c:forEach var="dto" items="${GdsNewItems}">

					<a href="${root}shop?gds=${dto.gdsNum}">
						<div class="main-reg">
							<div class="inner-reg1">
								<img src="images/${dto.thumbImg}" width="400px" height="400px" />
							</div>
							<div class="inner-reg2">

								<span class="s_code">${dto.cateName}</span>
								<c:choose>
									<c:when test="${dto.gdsStock < 1 }">
										<span class="stock_state">Sold Out</span>
									</c:when>
									<c:when test="${dto.gdsStock < 30 }">
										<span class="stock_state">마감임박</span>
									</c:when>
								</c:choose>
								<br> <span class="gds_name">${dto.gdsName }</span><br>
								<span class="gds_price">&#8361;${dto.gdsPrice }</span> <a
									href="#"><span class="review">리뷰
										${dto.review_count}개</span></a>
							</div>
							<div class="inner-reg3">
								<div class="favorite-div">
									<c:choose>
										<c:when test="${dto.like eq false}">
											<div class="favorite" id="userlike" value="like">
												<img src="images/favorite_border.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
										<c:when test="${dto.like eq true}">
											<div class="favorite" id="userlike" value="dislike">
												<img src="images/favorite-black.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
									</c:choose>

								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</c:when>
		<c:when test="${not empty GdsBestItems}">
			<div class="list_main">
				<c:forEach var="dto" items="${GdsBestItems}">

					<a href="${root}shop?gds=${dto.gdsNum}">
						<div class="main-reg">
							<div class="inner-reg1">
								<img src="images/${dto.thumbImg}" width="400px" height="400px" />
							</div>
							<div class="inner-reg2">

								<span class="s_code">${dto.cateName}</span>
								<c:choose>
									<c:when test="${dto.gdsStock < 1 }">
										<span class="stock_state">Sold Out</span>
									</c:when>
									<c:when test="${dto.gdsStock < 30 }">
										<span class="stock_state">마감임박</span>
									</c:when>
								</c:choose>
								<br> <span class="gds_name">${dto.gdsName }</span><br>
								<span class="gds_price">&#8361;${dto.gdsPrice }</span> <a
									href="#"><span class="review">리뷰
										${dto.review_count}개</span></a>
							</div>
							<div class="inner-reg3">
								<div class="favorite-div">
									<c:choose>
										<c:when test="${dto.like eq false}">
											<div class="favorite" id="userlike" value="like">
												<img src="images/favorite_border.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
										<c:when test="${dto.like eq true}">
											<div class="favorite" id="userlike" value="dislike">
												<img src="images/favorite-black.svg" class="unactive"
													value="${dto.gdsNum}" />
											</div>
										</c:when>
									</c:choose>

								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</c:when>
		<c:otherwise>
			<table id="searchResult">
				<tr>
					<td><strong>"${searchWord}" </strong> 키워드로 검색된 <strong>${totalRow}</strong>개의
						상품이 있습니다.</td>
				</tr>
				<tr>
					<td>죄송합니다. 빠른 시일 내로 상품을 준비하겠습니다.</td>
				</tr>
			</table>
		</c:otherwise>
	</c:choose>
	<%@include file="footBar.jsp"%>
</body>
<script>
	$(document).ready(function() {
		$(".favorite > img").on("click", function() {
			let like = $(this).parent().attr('value');
			let gdsNum = $(this).attr('value')
			let check = "<c:out value='${sessionScope.loginUser.check}'/>";
			if (check === "false") {
				alert("로그인 후 사용가능합니다");
				location.href = '${root}login';
				return false;
			}

			let userNum = "<c:out value='${sessionScope.loginUser.userNum}'/>";
			let result = {
				"gdsNum" : gdsNum,
				"userNum" : userNum
			};

			if (like == 'like') {

				fetch('${root}shop/like', {
					method : 'POST',
					headers : {
						'Content-Type' : 'application/json;charset=utf-8'
					},
					body : JSON.stringify(result)
				})

				$(this).prop("src", "images/favorite-black.svg");
				like.setAttribute('value', 'dislike');

			} else {

				fetch('${root}shop/dislike', {
					method : 'POST',
					headers : {
						'Content-Type' : 'application/json;charset=utf-8'
					},
					body : JSON.stringify(result)
				})

				$(this).prop("src", "images/favorite_border.svg");
				like.setAttribute('value', 'like');

			}

		});

	});
</script>
</html>