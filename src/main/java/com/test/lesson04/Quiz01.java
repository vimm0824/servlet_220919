package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Quiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		// 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();

		// select 출력
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `real_estate` order by `id` desc limit 10;";
		try {
			ResultSet resultSet = ms.select(selectQuery);
			while (resultSet.next()) {
				out.println("매물 주소: " + resultSet.getString("address") 
				+ ", 면적: " + resultSet.getInt("area") + ", 타입: " + resultSet.getString("type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		// 해제
		ms.disconnect();
	}
}
