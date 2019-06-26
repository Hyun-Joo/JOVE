<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="include/header.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap&subset=korean" rel="stylesheet">
<style type="text/css">
* {font-family:'Nanum Pen Script',cursive; letter-spacing:2px; font-size:24px;}
</style>
</head>
<body>
<%@ include file="include/menu.jsp" %>
<h2 style="font-size:36px; font-weight:400; letter-spacing:5px;">${message}</h2>
</body>
</html>