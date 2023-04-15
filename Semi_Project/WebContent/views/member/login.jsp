<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.saltmarket.member.model.vo.Member" %>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>

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
<style>

    body { font-family: 'Gowun Dodum', sans-serif; }

    #login_area, #user-info {
        width: 200px;
        text-align: center;
        margin: auto;
    }

    #user-info, .form-group a {
        text-decoration: none;
        color: black;
    }

    .btn {
        background-color: #BFE9F9;
        color: black;
        border: none;
    }

    .form-group input { margin: 5px; }
</style>
</head>
<body>

	<%@ include file="../common/header.jsp" %>
	
    <br><br>
    <div id="login_area">
    
    	<% if(loginUser == null) { %>
	        <!-- 로그인 하기 전에 보여지는 로그인 form -->
	        <form id="login-form" action="<%= contextPath %>/login.me" method="post">
	            <div class="form-group">
	                <input type="text" name="userId" class="form-control" placeholder="아이디" required>
	            </div>
	            <div class="form-group">
	                <input type="password" name="userPwd" class="form-control" placeholder="비밀번호" required>
	            </div>
	            <br>
	            <div class="form-group">
	                <a href="">아이디/비밀번호 찾기</a><br>
	                <a href="">회원가입</a>
	            </div>
	            <br>
	            <button type="submit" class="btn btn-secondary">로그인</button>
	        </form>
        <% } else { %>
	        <!-- 로그인 성공 후 보여질 화면 -->
	        <div id="user-info">
	            <b><%= loginUser.getUserName() %>님</b> 환영합니다. <br><br>
	            <div align="center">
	                <a href="">마이페이지</a>
	                <a href="<%= contextPath %>/logout.me">로그아웃</a>
	            </div>
	        </div>
        <% } %>
        
    </div>
    
    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>




