package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz03")
public class UrlMappingQuiz03 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("기사 입력 시간: yyyy/MM/dd HH:mm:ss");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>뉴스 기사 출력</title></head><body>");
		out.println("<h1>[단독] 고양이가 야옹해</h1>");
		out.println("<p>" + sdf.format(now) + "</p><hr>");
		out.println("끝");
		out.println("</body></html>");
	}
}
