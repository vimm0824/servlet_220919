package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_update")
public class Quiz03Update extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request parametar
		// sellerId title price description pictureUrl
		int sellerId = Integer.valueOf(request.getParameter("sellerId"));
		String title = request.getParameter("title");
		int price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String pictureUrl = request.getParameter("pictureUrl");
		
		// DB connect
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert query
		String insertQuery = "insert into `used_goods`"
				+ "(`sellerId`, `title`, `price`, `description`, `pictureUrl`)"
				+ "values "
				+ "(" + sellerId + ", '" + title + "'," + price + ", '" + description + "', '" + pictureUrl + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB disconnect
		ms.disconnect();
		
		// redirect - 리스트 화면
		response.sendRedirect("/lesson04/quiz03/quiz03.jsp");
	}
}
