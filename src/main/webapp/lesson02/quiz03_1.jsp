<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int cm = Integer.valueOf(request.getParameter("cm"));
		int kg = Integer.valueOf(request.getParameter("kg"));
		double bmi = (double)kg / ((cm / 100.0) * (cm / 100.0));
		String result = null;
		if (bmi < 21) {
			result = "저체중";
		} else if (bmi >=21 && bmi < 26) {
			result = "정상";
		} else if (bmi >= 26 && bmi < 31) {
			result = "과체중";
		} else if (bmi >= 31) {
			result = "비만";
		}
	%>
	<div class="container">
		<h1>BMI 측정 결과</h1>
		<div class="display-4">
			당신은 <span class="text-info"><%= result %></span> 입니다.
		</div>
		<span>BMI수치 : <%= bmi %></span>
	</div>
</body>
</html>