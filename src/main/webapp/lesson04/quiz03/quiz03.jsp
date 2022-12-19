<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"	crossorigin="anonymous"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
	#wrap {width:1000px;}
	header {height:140px; background-color:#FF7F50;}
	.logo:hover {text-decoration: none;}
	.contents {min-height:600px;}
	.box {gap:5px 10px; padding-top:10px;}
	.goods-box{width:220px; height:280px; border: 1px solid #FF7F50;}
	.goods-box:hover {background-color:#DCDCDC;}
	.goods-box img {height:150px; width:160px;}
	.top-box-text {font-size:15px;}
	.box-text {font-size:12px;}
	footer {height:50px;}
</style>
</head>
<body>
	<div id="wrap" class="container">
		<header>
			<jsp:include page="header.jsp" />
		</header>
		<div class="contents box d-flex flex-wrap justify-content-around">
			<jsp:include page="contents.jsp" />
		</div>
		<footer>
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
</body>
</html>