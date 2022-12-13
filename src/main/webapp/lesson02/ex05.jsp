<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex05 - Calendar</title>
</head>
<body>
	<%
		/* 
			디자인 패턴
			- Singleton : new를 한번만 객체를 하나만 만들어서 재활용하는 것
			** ex)
			getInstance() {
				객체를 하나만 만들어서 재활용			
			}
		}
		*/
		// Date now = new Date()
		Calendar today = Calendar.getInstance();	// 이름이 singleton일뿐 새로운 시간을 만들수 있다.
		// out.println(today);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		out.println(sdf.format(today.getTime()) + "<br>");	// Calendar -> Date 변환 후 포맷 적용
		
		// 어제 날짜
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
		Calendar yesterday = Calendar.getInstance();
		// yesterday.add(단위, 얼만큼);
		// yesterday.add(Calendar.DATE, -1); // 하루 전
		// yesterday.add(Calendar.MONTH, -1); // 한달 전
		yesterday.add(Calendar.YEAR, -1); // 일년 전
		out.println("어제 날짜 : " + sdf2.format(yesterday.getTime()) + "<br>");
		
		// 두 날짜 비교
		// compareTo(n, m) 
		// return => (앞이 크면)1 (같으면)0 (앞이 작으면)-1 
		int result = today.compareTo(yesterday);
		if (result > 0) {
			out.print("today가 크다");
		} else if (result == 0) {
			out.print("두 날짜는 같다");
		} else {
			out.print("today가 작다");
		}
	%>
</body>
</html>











