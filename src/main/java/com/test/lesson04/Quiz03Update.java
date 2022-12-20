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
		String sellerStr = request.getParameter("sellerId");
		int sellerId = 0;
		if (sellerStr.equals("null")) {
			sellerStr = null;
		} else {
			sellerId = Integer.valueOf(sellerStr);
		}
		String title = request.getParameter("title");
		int price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String picture = request.getParameter("pictureUrl");
		
		// DB connect
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// insert query
		
		String insertQuery = "insert into `used_goods`"
				+ "(`sellerId`, `title`, `price`, `description`, `picture`)"
				+ "values "
				+ "(" + sellerId + ", '" + title + "'," + price + ", '" + description + "', '" + picture + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB disconnect
		ms.disconnect();
		
		// redirect - 리스트 화면
		response.sendRedirect("/lesson04/quiz03/quiz03.jsp");
	}
}
