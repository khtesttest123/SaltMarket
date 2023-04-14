<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8">
        <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>회원가입</title>
        <!-- Bootstrap -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
        <script src="http://code.jquery.com/jquery.js"></script>
        <!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들을 포함하세요 -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond) -->
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

        <!-- 구글 Gowun Dodum 폰트 적용 -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<style>
    body {
    padding: 2em;
    font-family: 'Gowun Dodum', sans-serif;
    }

    .submit-btn input{
    float: right;
    }

    .btn {
        background-color: #BFE9F9;
        color: black;
        border: none;
    }

    #divRegion select {
        display: inline-block;
    }

    #enroll-form {
        width: 800px;
        margin: auto;
        padding-left: 70px;
    }
    #divRegion select {
        width: 280px;
        display : inline-block;
        margin-left : 13px;
    }

</style>
</head>
<body>
    <h2 align="center">회원가입</h2>
        <br>
        <form id="enroll-form">
            <div class="form-group" id="divId">
                <label for="inputId" class="col-lg-2 control-label">아이디</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control onlyAlphabetAndNumber" id="id" data-rule-required="true" placeholder="아이디" maxlength="16">
                </div>
            </div>
            <div class="form-group" id="divPassword">
                <label for="inputPassword" class="col-lg-2 control-label">비밀번호</label>
                <div class="col-lg-10">
                    <input type="password" class="form-control" id="password" name="excludeHangul" data-rule-required="true" placeholder="비밀번호" maxlength="16">
                </div>
            </div>
            <div class="form-group" id="divPasswordCheck">
                <label for="inputPasswordCheck" class="col-lg-2 control-label">비밀번호 확인</label>
                <div class="col-lg-10">
                    <input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="비밀번호 확인" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divName">
                <label for="inputName" class="col-lg-2 control-label">이름</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="한글만 입력 가능" maxlength="15">
                </div>
            </div>
            <div class="form-group" id="divNickname">
                <label for="inputNickname" class="col-lg-2 control-label">닉네임</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="nickname" data-rule-required="true" placeholder="닉네임" maxlength="15">
                </div>
            </div>
            <div class="form-group" id="divEmail">
                <label for="inputEmail" class="col-lg-2 control-label">이메일</label>
                <div class="col-lg-10">
                    <input type="email" class="form-control" id="email" data-rule-required="true" placeholder="이메일 주소" maxlength="40">
                </div>
            </div>
            <div class="form-group" id="divPhoneNumber">
                <label for="inputPhoneNumber" class="col-lg-2 control-label">전화번호</label>
                <div class="col-lg-10">
                    <input type="tel" class="form-control onlyNumber" id="phoneNumber" data-rule-required="true" placeholder="-를 포함해서 입력" maxlength="11">
                </div>
            </div>
            <div class="form-group" id="divRegion">
                <label for="inputRegion" class="col-lg-2 control-label">동네 설정</label><br>
                <select class="col-lg-10 form-control" id="Region_si" data-rule-required="true" maxlength="11">
                    <option>XX시</option>
                </select>
                <select class="col-lg-10 form-control" id="Region_gu" data-rule-required="true" maxlength="11">
                    <option>XX구</option>
                </select>
            </div>
            <br>
            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <button type="submit" class="btn btn-secondary">회원 가입</button>
                </div>
            </div>
        </form>
    </body>
</html>