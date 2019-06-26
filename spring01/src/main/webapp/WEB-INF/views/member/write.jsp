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
<h2>회원등록</h2>
<form name="form1" method="post" action="${path}/member/insert.do">
<table border="1" style="border-collapse:collapse; width:400px;">
	<tr>
		<td>아이디</td>
		<td><input name="userid"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="passwd"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input name="name"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="email" name="email"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="확인" onclick="alert('회원등록이 완료되었습니다.')">
		</td>
	</tr>
</table>
</form>
</body>
</html>