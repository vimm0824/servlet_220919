package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class Quiz02Delete extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request parameter
		int id = Integer.valueOf(request.getParameter("id"));
		
		// DB connect
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete query
		String deleteQuery = "delete from `bookmark` where `id` = " + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB disconnect
		ms.disconnect();
		
		// redirect
		response.sendRedirect("/lesson04/quiz02/quiz02_menu.jsp");
	}
}
