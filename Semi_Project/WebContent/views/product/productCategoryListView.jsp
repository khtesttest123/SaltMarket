<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.saltmarket.common.model.vo.PageInfo, java.util.ArrayList, com.saltmarket.product.model.vo.Product" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>카테고리 검색 페이지</title>
        <!-- trade_board.css -->
        <link rel="stylesheet" href="resources/css/trade_board.css">
        <!-- 부트스트랩 CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

        <!-- bootstrap watch file link -->
        <link rel="stylesheet" href="resources/css/bootstrap_th.min.css">

        <!-- bootstrap icons CDN -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

        <!-- font -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

       
    </head>
    <body>
        <%@ include file="../common/header.jsp" %>
        <!-- 바디 시작 -->

        <div class="container" id="category1">
            <div class="row">
                <div class="col-1" id="category1_icon">
                    <h2 style="width: 200px;"><i class="bi bi-houses"></i> 홈&gt; </h2>
                </div>
                <div class="col-1 form-group" id="category1_select">
                    <select class="form-select" id="exampleSelect1">
                        <option>자켓</option>
                        <option>가디건</option>
                        <option>바지</option>
                        <option>상의</option>
                        <option>신발</option>
                    </select>
                </div>
            </div>
        </div>

        <br>
        
        <div class="container" id="category2">
            <div class="row row-cols-5 text-center" >
                <div class="col" onclick="location.href='https:www.naver.com'" >여성가방</div>
                <div class="col">남성가방</div>
                <div class="col">여행용</div>
                <div class="col">가정용</div>
                <div class="col">몰라요</div>
                <div class="col">몰라요</div>
                <div class="col">몰라요</div>
                <div class="col">몰라요</div>
                <div class="col">몰라요</div>
                
            </div>
        </div>
        
        <br><br>

        <div class="container" id="category3">
            <div class="row" id="asc" >
                <div class="category3_left"  >
                    <p id="category_name">남성의류</p><p>의 추천상품</p>
                </div>
                <div class="category3_right">
                    <a href="">정확도순</a>
                </div>
                &nbsp; |
                <div class="category3_right_1">
                    <a href="" >최신순</a>
                </div>
                &nbsp; |
                <div class="category3_right_1">
                    <a href="" >저가순</a>
                </div>
                &nbsp; |
                <div class="category3_right_1">
                    <a href="" >고가순</a>
                </div>
            </div>
        </div>

        <br>

        <div class="container" id="view_count">
            <div class="btn-group" role="group" aria-label="Button group with nested dropdown" >
                <button type="button" class="btn btn-primary">20개</button>
                <div class="btn-group" role="group">
                    <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1" >
                        <a class="dropdown-item" href="#">40개</a>
                        <a class="dropdown-item" href="#">50개</a>
                    </div>
                </div>
            </div>
        </div>
        
        <br>

        <div class="container" id="thumbnail">
            <div class="row row-cols-4">
            	<% for(Product p : list) { %>
	                <div class="col" >
	                    <div class="card" >
	                        <img src="../../resources/image/hyuksoo.png" class="card-img-top" alt="...">
	                        <div class="card-body">
	                            <h5 class="card-title"><%= p.getProductName() %></h5>
	                            <p class="card-text">상품설명</p>
	                            <a href="#" class="btn btn-primary">Go somewhere</a>
	                        </div>
	                    </div>
	                </div>
                <% } %>
            </div>
        </div>
        
        <br><br>
        <div class="container" >
            <ul class="pagination" > 
                <li class="page-item disabled">
                    <a class="page-link" href="#">&laquo;</a>
                </li>
                <li class="page-item active">
                    <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">4</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">5</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">&raquo;</a>
                </li>
            </ul>
        </div>

        <!-- 바디 끝 -->

    <%@ include file="../common/footer.jsp" %>
    </body>
</html>
