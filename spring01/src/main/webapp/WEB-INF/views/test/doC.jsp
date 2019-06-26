<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../include/header.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap&subset=korean" rel="stylesheet">
<style type="text/css">
* {font-family:'Nanum Pen Script',cursive; letter-spacing:2px; font-size:24px;}
h2 {font-size:36px; font-weight:400;}
</style>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<table border="1" style="border-collapse:collapse;">
<tr>
	<td>상품명</td>
	<td>${map.product.name}</td>
</tr>
<tr>
	<td>가격</td>
	<td>${map.product.price}</td>
</tr>
</table>
</body>
</html>