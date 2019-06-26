<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="include/header.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap&subset=korean" rel="stylesheet">
<style type="text/css">
* {font-family:'Nanum Pen Script',cursive; letter-spacing:2px; font-size:24px;}
</style>
<script>
function doF() {
	$.ajax({ //비동기적 방식으로 처리(백그라운드에서 실행)
		type: "post",
		url: "${path}/test/doF",
		success: function(result) {
			console.log(result);
			$("#result").html("상품명: "+result.name+"<br>가격: "+result.price+"(원)");
		}
	});
}
</script>
</head>
<body>
<%@ include file="include/menu.jsp" %>
<h2 style="font-size:36px; font-weight:400;">링크 테스트</h2>

<a href="${path}/test/doA">doA</a><br>
<a href="${path}/test/doB">doB</a><br>
<a href="${path}/test/doC">doC</a><br>
<a href="${path}/test/doD">doD</a><br>

<a href="#" onclick="doF()">doF</a><br><br>
<div id="result"></div>
</body>
</html>