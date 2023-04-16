<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.saltmarket.common.model.vo.PageInfo, java.util.ArrayList, com.saltmarket.freeboard.model.vo.Freeboard"%>
<% 
	PageInfo pi=(PageInfo)request.getAttribute("pi");
	ArrayList<Freeboard> list = (ArrayList<Freeboard>)request.getAttribute("list");

            int currentPage = pi.getCurrentPage();
            int startPage = pi.getStartPage();
            int endPage = pi.getEndPage();
            int maxPage = pi.getMaxPage();
            int pageLimit = pi.getPageLimit();
            int currentPageSection = ((currentPage - 1) / pageLimit) + 1;
            int maxPageSection = ((maxPage - 1) / pageLimit) + 1;
            %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<!-- jQuery 온라인 방식 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<!-- 외부방식 board.css -->
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/resources/css/board.css">

<!-- 폰트어썸 아이콘 적용 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>
.btn {
	background-color: #BFE9F9 !important;
	color: black !important;
	border: none !important;
}
.btn:hover {
	background-color: #6ad4fd !important;
}
#current-button:disabled {
	opacity: 1 !important;
	background-color: #6ad4fd !important;
}
hr {
    margin-top: 0px !important;
    margin-bottom: 0px !important;
}
</style>
</head>

<body>

	<%@ include file="../common/header.jsp"%>






	<div id="outer">
		<div id="left"></div>

		<div id="center">

			<h1 id="centertitle">오늘의 BEST</h1>

			<div id="bestdiv">
				<table align="center" class="bestlist-area bestlist-area1">
					<tr>
						<td>1</td>
						<td>[무료나눔]포켓몬카드 교환</td>
					</tr>
					<tr>
						<td>2</td>
						<td>[무료나눔]바닥고무매트</td>
					</tr>
					<tr>
						<td>3</td>
						<td>힐링스포츠 턱걸이 운동기구 나</td>
					</tr>
					<tr>
						<td>4</td>
						<td>싱크대 가저가실분 계신가요 부천</td>
					</tr>
					<tr>
						<td>5</td>
						<td>라탄의자 무료 나눔해요 사진</td>
					</tr>
				</table>

				<table align="center" class="bestlist-area bestlist-area2">
					<tr>
						<td>6</td>
						<td>카니발시트/벤츠 시트 14개 무료나눔 합니다000000000000000000</td>
					</tr>
					<tr>
						<td>7</td>
						<td>비누 원형몰드 무료나눔 합니다 사진</td>
					</tr>
					<tr>
						<td>8</td>
						<td>안마기 무료나눔 (대전입니다) 사진</td>
					</tr>
					<tr>
						<td>9</td>
						<td>벙커침대 무료나눔 사진</td>
					</tr>
					<tr>
						<td>10</td>
						<td>교자상과 다리미판 필요하신분(강남자곡동)</td>
					</tr>
				</table>
			</div>

			<br>

			<div id="listhead">
				<div class="category">
					<button class="btn btn-sm active" onclick="redirectToCategory('전체')">전체</button>
					<button class="btn btn-sm" onclick="redirectToCategory('잡담')">잡담</button>
					<button class="btn btn-sm" onclick="redirectToCategory('질문')">질문</button>
					<button class="btn btn-sm" onclick="redirectToCategory('정보')">정보</button>
					<button class="btn btn-sm" onclick="redirectToCategory('축하')">축하</button>
					<button class="btn btn-sm" onclick="redirectToCategory('고민/상담')">고민/상담</button>
				</div>
				  
				<script>
					function redirectToCategory(category) {
						location.href = '<%= contextPath %>/freeboardlist.bo?currentPage=1&category=' + encodeURIComponent(category);
						// 클릭한 버튼의 색상 변경
						button.style.backgroundColor = '#6ad4fd';
					}
				</script>
				  

				<div class="search-container">
					<input type="text" placeholder="검색어를 입력하세요" name="search">
					<button type="submit" class="btn btn-primary btn-sm">검색</button>
				</div>
			</div>
			<table align="center" class="list-area">
				<thead>
					<tr>
						<th width="30">No</th>
						<th width="100">카테고리</th>
						<th width="300">제목</th>
						<th width="100">작성자</th>
						<th width="60">조회수</th>
						<th width="100">작성일</th>
					</tr>
				</thead>
				<tbody>
					<% if(list.isEmpty()) { %>
					<tr>
						<td colspan="6">조회된 리스트가 없습니다.</td>
					</tr>
					<% } else { %>
					<% for(Freeboard b : list) { %>
					<tr>
						<td><%= b.getFreeboardNo() %></td>
						<td><%= b.getCategory() %></td>
						<td><%= b.getBoardTitle() %></td>
						<td><%= b.getUserName() %></td>
						<td><%= b.getBoardViews() %></td>
						<td><%= b.getCreatedDate() %></td>
					</tr>
					<% } %>
					<%} %>
				</tbody>
			</table>

			<div class="paging-area">

				<%-- 이전 페이지섹션으로 이동  --%>
				<% if(currentPage == 1) { %>
				<button type="button" class="btn btn-sm"
					disabled>&lt;&lt;</button>
				<button type="button" class="btn btn-sm"
					disabled>&lt;</button>
				<% } else if(currentPageSection == 1) { %>
				<button type="button" class="btn btn-sm"
					onclick="redirectToPage(1)">
					&lt;&lt;</button>
				<button type="button" class="btn btn-sm"
					onclick="redirectToPage(<%= currentPage - 1 %>)">
					&lt;</button>
				<% } else { %>
				<button type="button" class="btn btn-sm"
					onclick="redirectToPage(<%= (currentPageSection - 2) * 10 + 1 %>)">
					&lt;&lt;</button>
				<button type="button" class="btn btn-sm"
					onclick="redirectToPage(<%= currentPage - 1 %>)">
					&lt;</button>
				<% } %>

				<%-- 페이징처리  --%>
				<% for(int p = startPage; p <= endPage; p++) { %>
				<% if(p != currentPage) { %>
				<button type="button" class="btn btn-sm"
					onclick="redirectToPage(<%= p %>)">
					<%= p %>
				</button>
				<% } else { %>
				<button id="current-button" type="button"
					class="btn btn-sm" disabled><%= p %></button>
				<% } %>
				<% } %>

				<%-- 다음 페이지섹션으로 이동  --%>
				<% if(currentPageSection < maxPageSection ) { %>
				<button type="button" class="btn btn-sm"
					onclick="redirectToPage(<%= currentPage + 1 %>)">
					&gt;</button>
				<button type="button" class="btn btn-sm"
					onclick="redirectToPage(<%= currentPageSection * pageLimit + 1 %>)">
					&gt;&gt;</button>
				<% } else if(currentPage == maxPage) { %>
				<button type="button" class="btn btn-sm"
					disabled>&gt;</button>
				<button type="button" class="btn btn-sm"
					disabled>&gt;&gt;</button>
				<% } else { %>
				<button type="button" class="btn btn-sm"
					onclick="redirectToPage(<%= currentPage + 1 %>)">
					&gt;</button>
				<button type="button" class="btn btn-sm"
					onclick="redirectToPage(<%= maxPage %>)">
					&gt;&gt;</button>
				<% } %>
			</div>
			
			<script>
				function redirectToPage(page) {
					const urlParams = new URLSearchParams(window.location.search);
					const category = urlParams.get('category');
					location.href = '<%= contextPath %>/freeboardlist.bo?category=' + encodeURIComponent(category) + '&currentPage=' + page;
					// 클릭한 버튼의 색상 변경
					button.style.backgroundColor = '#6ad4fd';
				}
			</script>
			
			
		</div>

		<div id="right"></div>

	</div>
	
	
	<%@ include file="../common/footer.jsp"%>
	
	
	

<script>
    window.onload = function() {
  var scrollPos = sessionStorage.getItem('scrollPos');
  if (scrollPos !== null) {
    window.scrollTo(0, scrollPos);
    sessionStorage.removeItem('scrollPos');
  }
}

window.onbeforeunload = function() {
  sessionStorage.setItem('scrollPos', window.scrollY);
}

function goToPage(url) {
  var scrollPos = window.scrollY;
  sessionStorage.setItem('scrollPos', scrollPos);
  location.href = url;
}
</script>
</body>

</html>