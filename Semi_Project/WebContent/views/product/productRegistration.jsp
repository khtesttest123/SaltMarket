<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>상품등록페이지</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="../../resources/css/productRegistration.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
	 
	 <script src="http://code.jquery.com/jquery.min.js"></script>
	 <link href="../../resources/css/select2.css" rel="stylesheet"/>
	<script src="../../resources/js/select2.js"></script>
	<script>
		$(document).ready(function () {
			 $("#region").select2();
		});
  </script>

</head>
<body>
	<%@ include file="../common/header.jsp" %>

			<!-- body 시작 -->
				
			<form id="productrRegistration-form" action="<%= contextPath %>/registration.pr" method="post">

				<input type="hidden" name="userNo" value="">

				<br><br>
					<div class="container" id="title">
							<div class="row">
								<div class="col text-center">
									<h2>제목</h2>
							</div>
								<div class="col-9">
										<input type="text" id="productName" name="productName"  placeholder="상품 제목을 입력해주세요">
										&nbsp;&nbsp;
										<input class="form-check-input" type="checkbox" value="" id="direct-trade">
										<label for="direct-trade"> 직거래 선호 </label>
								</div>
							</div>
					</div>
					<div class="container" id="sell-category">
							<div class="row">
								<div class="col text-center">
									<h2>카테고리</h2>
							</div>
								<div class="col-9">
									<input type="radio" id="category1" name="category" value="1">&nbsp;
									<label for="category1"> 디지털 가전 </label>&nbsp;&nbsp;

									<input type="radio" id="category2" name="category" value="2">&nbsp;
									<label for="category2"> 가구/인테리어 </label>&nbsp;&nbsp;
										
									<input type="radio" id="category3" name="category" value="3">&nbsp;
									<label for="category3"> 의류 </label>&nbsp;&nbsp;

								</div>
							</div>
					</div>
				<div class="container" id="area">
					<div class="row">
							<div class="col text-center">
								<h2>거래지역</h2>
					</div>
							<div class="col-9">
								<select id="region" name="region">
									<option>서울시 마포구</option>
									<option>부산시 해운대구</option>
									<option>대전시 유성구</option>
							</select>
							</div>
					</div>
				</div>
				<div class="container" id="sellPrice">
					<div class="row">
							<div class="col text-center">
								<h2>가격</h2>
							</div>
							<div class="col-9">
								<input type="text" name="price" placeholder="숫자만 입력해주세요"><h4>원</h4>
								&nbsp;&nbsp;
								<input class="form-check-input" type="checkbox" value="" id="delivery-fee">
								<label for="delivery-fee"> 배송비포함 </label>
							</div>
					</div>
				</div>
					<div class="container" id="content">
							<div class="row">
								<div class="col text-center">
									<h2>설명</h2>
								</div>
								<div class="col-9">
									<input type="text" name="description" placeholder="상품 설명을 입력해주세요(2000자 이내)">
								</div>
							</div>
					</div>
					<div class="container" id="image">
							<div class="row">
								<div class="col text-center">
									<h2>상품<br>이미지</h2>
							</div>
							<div class="col-9">
								<div id="file-image">
									<table>
											<tr style="height:200px">
												<th>
													<img src="resources/image/flower.jpg" class="card-img-top" alt="...">
												</th>
											</tr>
											<tr>
												<td>
													<input type="file" id="file1" class="upload-hidden" name="file1">
												</td>
											</tr>
									</table>
								</div>
							</div>
					</div>
				</div>
				<div class="container" id="sell-submit">
					<div class="row">
							<div class="col">
								<input type="submit" id="sell-submit-btn" value="등록하기">
							</div>
					</div>
				</div>
		</form>
		<!-- 바디 끝 -->


		<%@ include file="../common/footer.jsp" %>

	

</body>
</html>