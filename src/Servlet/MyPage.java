package Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MyPage extends HttpServlet{
	//セッション
	//ログインされていなければlogin.jspへ
	//ログインされていればmyPage.jspへ
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String mail_address = req.getParameter("mail_address");
		String password = req.getParameter("password");


		req.setAttribute("mail_address", mail_address);
		req.setAttribute("password", password);


		req.getRequestDispatcher("myPage.jsp").forward(req, res);

	}
}
