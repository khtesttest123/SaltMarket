<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- icon css cdn link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
    
    <link rel=“stylesheet” href=“css/bootstrap.min.css”>

    <!-- 태혁이가보낸 아이콘 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css%22%3E">

    <!-- 구글 Gowun Dodum 폰트 적용 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

    <!-- 사이드바 아이콘 -->
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>

    <style>

        body { font-family: 'Gowun Dodum', sans-serif; }

        div {
            box-sizing: border-box;
        }
        
        .wrap_content>div {  width: 100%; }

        #profile {
            border: 3px solid #BFE9F9;
            width: 1024px;
            margin: auto;
        }

        .nav a {
            text-decoration: none;
            color: black;
        }

        .nav a:hover { font-weight: bold; }

        #profile img { margin: 20px; }

        input.btn {
            float: right;
            margin: 20px;
            background-color: #BFE9F9;
            color: black;
            border: none;
        }

        .nav-item i {
            display: inline-block;
            vertical-align: middle;
            margin-right: 5px;
        }

        .nav-item a {
            display: inline-block;
            vertical-align: middle;
        }

         /* my-info */
        .mypage {
            margin: 0;
            padding: 0;
        }
        .my-info-titl {
            background-color: #BFE9F9;
            padding: 1rem;
            font-size: 1.3rem;
            margin: 0;
        }
        .my-info-titl a{
            color: white;
            font-size: 1.3rem;
            margin: 0;
        }
        .my-info-titl a:hover {
            color: white;
        }
        .my-info-box img {
            display: none;
        }
        .my-info-box {
            background-color: #BFE9F9;
            height: 150px;
        }
        .my-info-box .my-img {
            width: 100px;
            height: 100px;
            background-color: white;
            background-repeat: no-repeat;
            background-size: 80%;
            background-position: center;
            margin: 1rem 0 0 3rem;
            border-radius: 50%;
            float: left;
        }
        .my-info-box .my-info-dsec {
            margin: 16px 0 0 2rem;
            float: left;
        }
        .my-info-box .my-info-dsec .my-name {
            color: white;
            display: inline;
        }
        .my-info-box .my-info-dsec .link-modify {
            color: gray;
            text-decoration: none;
            margin-left: 1em;
            font-size: 0.8rem;
        }
        .my-info-box .my-info-dsec .link-modify:hover {
            color: white; 
        }
        .my-info-box .my-info-dsec {
            color: gray;
            text-decoration: none;
            font-size: 0.8rem;
        }
        .my-info-box .my-menu-list {
            width: 350px;
            padding: 0;
            float: right;
            display: flex;
            justify-content: space-around;
            list-style: none;
            margin: 0 50px 0 0;
        }
        .my-info-box .my-menu-item {
            color: white;
            font-size: 2rem;
            line-height: 1em;
        }
        .my-info-box .my-menu-item:hover {
            color: white;
        }
        .my-info-box .my-menu-item > div {
            font-size: 0.8rem;
        }
        .my-info-box::after {
            content: "";
            clear: both;
            display: block;
        }

        /* nav */
        .nav {
            box-sizing: border-box;
            width: 170px;
            line-height: 2rem;
            padding: 1em;
            float: left;
        }
        .nav .nav-list {
            margin: 0;
        }
        .nav .nav-list .titl {
            font-size: 1rem;
            font-weight: bold;
        }
        .nav .nav-list .nav-item {
            font-size: 0.8rem;
            margin: 0;
        }
        .nav .nav-list .nav-item a {
            color: gray;
            text-decoration: none;
        }
        .nav .nav-list .nav-item a:hover {
            font-weight: bold;
        }

        /* 최근 본 상품 */
        .view-product {
            box-sizing: border-box;
            padding: 1em;
            width: calc(1024px - 200px);
            float: left;
        }
        .view-product img {
            width: 100px;
            height: 100px;
        }
        .view-pro-container {
            display: flex;
            flex-wrap: wrap;
            margin: 0 -1rem;
        }
        .view-pro-container .view-pro-item {
            box-sizing: border-box;
            width: 25%;
            padding: 0 1rem;
            text-align: center;
            margin-bottom: 2rem;
        }
        .view-pro-container .view-pro-item .pro-dsc {
            text-align: left;
            padding: 0 21px;
            margin-top: 7px;
        }
        .view-pro-container .view-pro-item .pro-dsc .company {
            font-size: 12px;
        }
        .view-pro-container .view-pro-item .pro-dsc .name {
            font-size: 14px;
            font-weight: bold;
            margin-top: 7px;
        }
        .view-pro-container .view-pro-item .pro-dsc .sale-price {
            margin-top: 8px;
            font-size: 14px;
            font-weight: bold;
        }
        .view-pro-container .view-pro-item .pro-dsc span {
            color: orangered;
            margin-left: 50px;
        }
        .view-pro-container .view-pro-item .pro-dsc .price {
            color: lightgray;
            text-decoration: line-through;
            font-size: 9px;
            margin-top: 3px;
        }

    </style>
</head>
<body>
    <div class="wrapper">

        <!-- 프로필 -->
        <!--
        <div id="profile">
            <p>
                <img src="resources/img/프사.png" width="130" height="130" align="middle">
                소금홀릭&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="range" class="range" name="saltScore" min="0" max="100" step="0.5" value="36.5">
                <input type="button" class="btn btn-secondary" value="프로필 보기" align="left">
            </p>
        </div>
        -->
        <div class="mypage">
            <h1 class="my-info-titl"><a href="">My Page</a></h1>
            <div class="my-info-box">
                <figure class="my-img" style="background-image:url(img/logo_w.png)">
                    <img src="img/logo_w.png">
                </figure>
                <div class="my-info-dsec">
                    <h1 class="my-name">소금홀릭</h1>
                    <a class="link-modify" href="">회원정보변경</a>
                    <p class="saltyScore">천일염</p>
                </div>
                <ul class="my-menu-list">
                    <a href="">
                        <li class="my-menu-item">
                            <i class="fab fa-product-hunt"></i>
                            <div>포인트 &gt;</div>
                            <strong>6,100</strong>
                        </li>
                    </a>
                    <a href="">
                        <li class="my-menu-item">
                            <i class="fas fa-shopping-basket"></i>
                            <div>장바구니 &gt;</div>
                            <strong>1</strong>
                        </li>
                    </a>
                </ul>
            </div>

            <!-- 사이드바 -->
            <nav class="sidebar">
                <ul class="nav flex-column">
                    <li class="title"><b>나의 거래</b></li>
                    <li class="nav-item">
                        <i class="fa fa-heart-o" aria-hidden="true"></i>
                        <a class="nav-link active" href="#">관심목록</a>
                    </li>
                    <li class="nav-item">
                        <i class="fa fa-krw"></i>
                        <a class="nav-link" href="#">판매내역</a>
                    </li>
                    <li class="nav-item">
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <a class="nav-link" href="#">구매내역</a>
                    </li>
                    <li class="nav-item">
                        <i class="fa fa-envelope-o"></i>
                        <a class="nav-link" href="#">쪽지함</a>
                    </li>
                    <li class="title"><b>나의 커뮤니티</b></li>
                    <li class="nav-item">
                        <i class="fa fa-smile-o"></i>
                        <a class="nav-link active" href="#">커뮤니티 글</a>
                    </li>
                </ul>
            </nav>

            <!-- 관심목록 상세 -->
            <!--
            <div id="wishlist">
                <p>
                    <i class="fa fa-chevron-left" aria-hidden="true"></i>
                    <b>관심목록</b>
                </p>
                <tr>
                    <td>관심 2</td>
                    <br>
                    <td>
                        <input type="checkbox"> 선택 삭제
                    </td>
                    <td></td>
                </tr>
            </div>
            -->

            <!-- 최근 본 상품 -->
            <section class="view-product">
                <header class="header">
                    <i class="fa fa-chevron-left" aria-hidden="true"></i>
                    <b>관심목록</b>
                </header>
                <hr>
                <div class="view-pro-container">
                    <div class="view-pro-item">
                        <img class="pro-img" src="resources/image/비누.jpg">
                        <div class="pro-dsc">
                            <div class="company">에코빈</div>
                            <div class="name">유아전용 천연 목욕비누</div>
                            <div class="sale-price">
                                10,000원
                                <span>10%</span>
                            </div>
                            <div class="price">9,000원</div>
                        </div>
                    </div> <!-- view-pro-item -->
                    <div class="view-pro-item">
                        <img class="pro-img" src="resources/image/비누.jpg">
                        <div class="pro-dsc">
                            <div class="company">에코빈</div>
                            <div class="name">유아전용 천연 목욕비누</div>
                            <div class="sale-price">
                                10,000원
                                <span>10%</span>
                            </div>
                            <div class="price">9,000원</div>
                        </div>
                    </div> <!-- view-pro-item --> 
                </div> <!-- view-pro-container --> 
            </section> <!-- 최근 본 상품 --> 

        </div>
    </div>

</body>
</html>