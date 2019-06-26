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
th {font-weight: 400;}
td a {text-decoration:none; color:black;}
td a:hover {color: #a3a3c2;}
</style>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<h2>회원목록</h2>
<input type="button" value="회원등록" onclick="location.href='${path}/member/write.do'">
<br><br>
<table border="1" style="border-collapse:collapse; width:700px;">
<tr>
	<th>아이디</th>
	<th>이름</th>
	<th>이메일</th>
	<th>가입일자</th>
</tr>
<c:forEach var="row" items="${list}">
<tr>
	<td>${row.userid}</td>
	<td><a href="${path}/member/view.do?userid=${row.userid}">${row.name}</a></td>
	<td>${row.email}</td>
	<td><fmt:formatDate value="${row.join_date}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
</tr>
</c:forEach>
</table>
</body>
</html>