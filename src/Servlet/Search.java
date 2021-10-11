package Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Search extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String kind = req.getParameter("kind");
		String birthday = req.getParameter("birthday");
		String sex = req.getParameter("sex");
		String user_area = req.getParameter("user_area");

		req.setAttribute("kind", kind);
		req.setAttribute("birthday", birthday);
		req.setAttribute("sex", sex);
		req.setAttribute("user_area", user_area);

		req.getRequestDispatcher("search.jsp").forward(req, res);
	}

}
