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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록 조회</title>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>