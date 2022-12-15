<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"	crossorigin="anonymous"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
	header {height:80px;}
	.menu {height:50px; min-width:40%;}
	nav a {color:#111; font-weight:bold;}
	nav a:hover {color:#111;}
	.contents {min-height:500px;}
	.main-box {border:1px solid green; height:200px; width:95%;}
	footer {height:50px;} 
	.music-info-text {font-size:12px; color:#777;}
</style>
</head>
<body>
	<div id="wrap">
		<header class="d-flex align-items-center ml-4">
			<jsp:include page="header.jsp" />
		</header>
		<nav class="menu">
			<jsp:include page="menu.jsp" />
		</nav>
		<section class="contents">
			<jsp:include page="list.jsp" />
		</section>
		<footer class="d-flex align-items-center">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
</body>
</html>