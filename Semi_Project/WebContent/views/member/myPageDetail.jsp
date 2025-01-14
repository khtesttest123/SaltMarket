<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지_상세프로필</title>

    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- icon css cdn link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
    
    <link rel=“stylesheet” href=“css/bootstrap.min.css”>

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

        div { box-sizing: border-box; }

        .profile {
            border: 3px solid #BFE9F9;
            width: 600px;
            height: 800px;
            margin: auto;
        }

        #profile img { margin: 20px; }

        input.btn {
            float: right;
            margin: 20px;
            background-color: #BFE9F9;
            color: black;
            border: none;
        }

        .info { margin: 20px;}

    </style>
</head>
<body>
    <div class="profile">
        <div id="profile">
            <p>
                <img src="resources/img/프사.png" width="130" height="130" align="middle">
                소금홀릭&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="range" class="range" name="saltScore" min="0" max="100" step="0.5" value="36.5">
                <input type="button" class="btn btn-secondary" value="프로필 수정" align="left">
            </p>
        </div>
        <div class="info">
            <p>
                <b>지역</b>&nbsp;
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                &nbsp;서울시 영등포구
            </p>
            <hr>
            <p>
                <b>판매상품 2개</b>&nbsp;
                <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </p>
            <hr>
            <p>
                <b>받은 매너 평가</b>&nbsp;
                <i class="fa fa-chevron-right" aria-hidden="true"></i><br><br>
                <i class="fa fa-user" aria-hidden="true"></i> &nbsp;친절하고 매너가 좋아요.<br>
                <i class="fa fa-user" aria-hidden="true"></i> &nbsp;시간 약속을 잘 지켜요.
            </p>
            <hr>
            <p>
                <b>받은 거래 후기</b>&nbsp;
                <i class="fa fa-chevron-right" aria-hidden="true"></i><br><br>
                <b>인생에 따뜻한</b><br>
                친절하고 매너가 좋아요. <br>
                <b>인생에 따뜻한</b><br>
                시간 약속을 잘 지켜요.
            </p>
        </div>
    </div>
    
</body>
</html>