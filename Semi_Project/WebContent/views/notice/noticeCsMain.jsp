<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>고객센터</title>
        <!-- 부트스트랩 CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

        <!-- bootstrap watch file link -->
        <link rel="stylesheet" href="../../resources/css/bootstrap_th.min.css">

        <!-- bootstrap icons CDN -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

        <!-- font -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

        <!-- trade_board.css -->
        <link rel="stylesheet" href="../../resources/css/trade_board.css">

        <!-- 구글 아이콘 -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

        <script src="https://ajax.googleapis.com/ajax/libs/cesiumjs/1.78/Build/Cesium/Cesium.js"></script> <!--온라인 방식-->

        <style>
            
            .col-qs{
                display: flex;
                justify-content: center;
            }
            #searchs{
                display: flex;
                justify-content: center;
            }
            .d-flex{
                width:800px;
            }
            .searchss{
                display: flex;
                justify-content: center;
            }
            .searchss div{
                text-align: center;
                width: 800px;
            }

            .searchss a{
                margin: 30px;
            }
            .container2{
                height: 1500px;
                width: 1500px;
                background: linear-gradient(to bottom,lightgray, white);
            }
            
            #its{
                background: linear-gradient(to bottom,lightgray, white);
            }

        </style>
    </head>
    <body>
        <div id="up" style="box-shadow: 1px 2px 10px 5px gray; position: relative;">
            <div class="container container1" style="padding: 40px;" >
                <div class="row ">
                    <div class="col col-qs">
                        <h2 style="color: black; font-size:45px; font-weight: 900;">소금마켓 고객센터</h2>
                    </div>
                </div>
                <br>
                <div class="row" style="margin-bottom: 12px;">
                    <div id= searchs>
                        <form class="d-flex" >
                            <input class="form-control me-sm-2" type="search" placeholder="Search" data-listener-added_ae804d24="true" >
                            <button class="btn btn-secondary my-2 my-sm-0" type="submit" >Search</button>
                        </form>
                    </div>    
                </div>
                <div class="row searchss">
                    <div style="display: flex; justify-content: center;">
                        <div class="col" style="width: 800px; margin-bottom: 2px;">
                            <a href="" style="text-decoration: none; color:gray; font-size: 21px;">#하이</a>
                            <a href="" style="text-decoration: none; color:gray; font-size: 21px;">#하이</a>
                            <a href="" style="text-decoration: none; color:gray; font-size: 21px;">#하이</a>
                            <a href="" style="text-decoration: none; color:gray; font-size: 21px;">#하이</a>
                            <a href="" style="text-decoration: none; color:gray; font-size: 21px;">#하이</a>
                            <a href="" style="text-decoration: none; color:gray; font-size: 21px;">#하이</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="its">
            <div class="container container2" style="height: 1700px;">
                <br>
                <div style="display: flex; width: 1300px; justify-content: center; ">
                    <div style="width: 50px;"></div>
                    <div style="  margin: 20px; width: 170px; text-align: center; height: 170px;  border-radius: 100%; background-color: white; box-shadow: 1px 8px 10px 5px gray; ">
                        <a href="mTomEnrollForm.html" style="width: 100%; height: 100%;">
                            <span class="material-symbols-outlined" style="font-size: 165px; color: #1C8FED;">
                                communication
                            </span>
                        </a>
                        <p style="margin-top:20px;">1:1문의 하러가기</p>
                    </div>
                    <div style="  margin: 20px; width: 170px; text-align: center; height: 170px;  border-radius: 100%; background-color: white; box-shadow: 1px 8px 10px 5px gray;">
                        <a href="mTomListView.html" style="width: 100%; height: 100%;">
                            <span class="material-symbols-outlined" style="font-size: 120px;  padding: 23px 7px 0px 0px ;color: #1C8FED;">
                                clinical_notes
                            </span>
                        </a>
                        <p style="margin-top:41px;">내 문의 보러가기</p>
                    </div>
                    <div onclick="scroll1()" style="  margin: 20px; width: 170px; text-align: center; height: 170px;  border-radius: 100%; background-color: white; box-shadow: 1px 8px 10px 5px gray;">
                        <div href="" style="width: 100%; height: 100%;">
                            <span class="material-symbols-outlined" style="font-size: 140px;  padding: 10px 0px 0px 0px; color: #1C8FED;">
                                support_agent
                            </span>
                        </div>
                        <p style="margin-top:20px;">고객센터 번호보기</p>
                    </div>
                    <div style="  margin: 20px; width: 170px; text-align: center; height: 170px;  border-radius: 100%; background-color: white; box-shadow: 1px 8px 10px 5px gray;">
                        <a href="../common/main.jsp" style="width: 100%; height: 100%;">
                            <img src="../../resources/image/logo-removebg-preview.png" style="width: 100%; height: 100%;" alt="">
                        </a>
                        <p style="margin-top:20px;">소금마켓 가기</p>
                    </div>
                </div>

                <br><br>
                <span style="display : inline-block; font-size: 25px; font-weight: bolder; color: black; width: 1209px;">자주 묻는 질문 TOP 5</span> 
                <a href="faq.html" style="text-align: end; font-size: 25px; text-decoration: none; color: black;">전체보기 &gt;</a>

                <br><br>

                <div style="padding: 20px; background-color: white; box-shadow: 5px 5px 10px 5px gray;  border-bottom-right-radius: 20px;">
                    <br>
                    <div style="display: flex; justify-content: center;">
                        <div style="border: 1.5px solid black; width: 1284px;"></div>
                    </div>
                    <div class="accordion" id="accordionExample" style="margin : 20px; ">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne1" aria-expanded="false" aria-controls="collapseOne">
                                    <span class="material-symbols-outlined">
                                        question_mark
                                        </span>
                                    [분쟁해결절차] 사기꾼의 주요 사기패턴 유형이 궁금해요.
                                </button>
                            </h2>
                            <div id="collapseOne1" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample" >
                                <div class="accordion-body">
                                <strong>주요사기 패턴을 알려드려요!</strong> #최근 빈번하게 발생하는 사기유형
                                거래 전, 아래와 같이 행동하는 상점이 있다면 즉시 신고해 주세요!
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne2" aria-expanded="false" aria-controls="collapseOne">
                                    <span class="material-symbols-outlined">
                                        question_mark
                                        </span>
                                    [분쟁해결절차] 사기꾼의 주요 사기패턴 유형이 궁금해요.
                                </button>
                            </h2>
                            <div id="collapseOne2" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample" >
                                <div class="accordion-body">
                                <strong>주요사기 패턴을 알려드려요!</strong> #최근 빈번하게 발생하는 사기유형
                                거래 전, 아래와 같이 행동하는 상점이 있다면 즉시 신고해 주세요!
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne3" aria-expanded="false" aria-controls="collapseOne">
                                    <span class="material-symbols-outlined">
                                        question_mark
                                        </span>
                                    [분쟁해결절차] 사기꾼의 주요 사기패턴 유형이 궁금해요.
                                </button>
                            </h2>
                            <div id="collapseOne3" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample" >
                                <div class="accordion-body">
                                <strong>주요사기 패턴을 알려드려요!</strong> #최근 빈번하게 발생하는 사기유형
                                거래 전, 아래와 같이 행동하는 상점이 있다면 즉시 신고해 주세요!
                                패턴1. "번개장터 앱 잘 안봐요, 카톡이나 문자 주세요" <br>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne4" aria-expanded="false" aria-controls="collapseOne">
                                    <span class="material-symbols-outlined">
                                        question_mark
                                        </span>
                                    [분쟁해결절차] 사기꾼의 주요 사기패턴 유형이 궁금해요.
                                </button>
                            </h2>
                            <div id="collapseOne4" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample" >
                                <div class="accordion-body">
                                <strong>주요사기 패턴을 알려드려요!</strong> #최근 빈번하게 발생하는 사기유형
                                거래 전, 아래와 같이 행동하는 상점이 있다면 즉시 신고해 주세요!
                                <code>.accordion-body</code>, though the transition does limit overflow.
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne5" aria-expanded="false" aria-controls="collapseTwo">
                                    <span class="material-symbols-outlined">
                                        question_mark
                                        </span>
                                    거래를 하면 안 되는 것들은 어떤 것이 있나요?
                                </button>
                            </h2>
                            <div id="collapseOne5" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample" >
                                <div class="accordion-body">
                                <strong>거래금지품목은 이용약관 및 현행 법률에 따라 즉시 삭제 및 계정 차단이 될 수 있으므로 운영정책을 참고하셔서 이용 부탁 드립니다.  
                                    개인정보 : 개인정보를 사고파는 행위와 면허증, 허가증, 등록증 등을 위, 변조하는 행위는 형법에 따라 처벌받을 수 있습니다.
                                    예시) 주민등록증, 여권, 학생증, 수험표, 운전면허증, 대포통장, 듀얼폰, 듀얼넘버 등 
                                    온라인 개인 계정 : 개인 계정 및 인증번호를 통해 각종 피해가 발생되고 있어 번개장터 운영정책에 따라 제재 됩니다.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                <div style="margin-top: 80px;">
                    <span style="display : inline-block; font-size: 25px; font-weight: bolder; color: black; width: 1209px;">공지사항</span> 
                    <a href="notice.html" style="text-align: end; font-size: 25px; text-decoration: none; color: black;">전체보기 &gt;</a>
                </div>
                <br>
                <div id="box1" style="height:400px; background-color: white; box-shadow: 5px 5px 10px 5px gray; border-bottom-right-radius: 20px; ">
                    <br>
                    <div style="display: flex; align-items: center; flex-direction: column;">
                        <div style="border: 1.5px solid black; width: 1284px; margin-top:20px;"></div>
                        <div style="border-bottom: 1px solid black; width: 1284px; padding: 20px;">Appl</div>
                        <div style="border-bottom: 1px solid black; width: 1284px; padding: 20px;">Appl</div>
                        <div style="border-bottom: 1px solid black; width: 1284px; padding: 20px;">Appl</div>
                        <div style="border-bottom: 1px solid black; width: 1284px; padding: 20px;">Appl</div>
                        <div style="border-bottom: 1px solid black; width: 1284px; padding: 20px;">Appl</div>
                    </div>
                </div>

                <div style="display: flex; margin-top: 80px;">
                    <div style="width: 640px; height: 170px;  margin-right: 48px; background-color: white; box-shadow: 5px 5px 10px 5px gray; border-bottom-right-radius: 20px; padding: 30px 40px; display: flex;">
                        <div style=" background-color: lightgray; border-radius: 100%; width: 110px; ">
                            <span class="material-symbols-outlined" style="font-size: 108px;">
                                support_agent
                            </span>
                        </div>
                        <div style="margin-left:30px">
                            <p style="font-size: 25px; color: black; margin-bottom: 10px ;"> 고객센터 1670-2910</p>
                            <div style="display: flex; height: 33px;" >
                                <p style="font-size: 20px; color: black; margin-right: 10px;">월 ~ 금요일 </p>
                                <p style="font-size: 20px; "> 09:00 ~ 18:00</p>
                            </div>
                            <div style="display: flex;">
                                <p style="font-size: 20px; color: black; margin-right: 2px;">주말, 공휴일</p> <p style="font-size: 20px;">휴무</p>
                            </div>
                            
                        </div>
                    </div>
                    <div style="width: 640px; height: 170px;  background-color: white; box-shadow: 5px 5px 10px 5px gray; border-bottom-right-radius: 20px; padding: 30px 40px; display: flex;">
                        <div style=" background-color: lightgray; border-radius: 100%; width: 110px; ">
                            <span class="material-symbols-outlined" style="font-size: 108px;">
                                pin_drop
                            </span>
                        </div>
                        <div style="margin-left:30px">
                            <p style="font-size: 25px; color: black; margin-bottom: 10px ;"> 소금마켓 오시는 길</p>
                            <div style="display: flex; height: 33px;" >
                                <p style="font-size: 20px; color: black; margin-right: 10px;">여의도점 </p>
                                <p style="font-size: 20px; "> 서울특별시 영등포구 여의대로 108</p>
                            </div>
                            <div style="display: flex;">
                                <p style="font-size: 20px; color: black; margin-right: 2px;">코엑스점</p> 
                                <p style="font-size: 20px;">서울특별시 강남구 영동대로 513</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

        <script>
            function scroll1(){
                window.scrollTo(0, document.body.scrollHeight);
            }
        </script>
    </body>
</html>