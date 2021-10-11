package Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UserInsertConfirm extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String mail_address = req.getParameter("mail_address");
		String password = req.getParameter("password");
		String contact = req.getParameter("contact");
		String user_area = req.getParameter("user_area");


		req.setAttribute("mail_address", mail_address);
		req.setAttribute("password", password);
		req.setAttribute("contact", contact);
		req.setAttribute("user_area", user_area);


		req.getRequestDispatcher("userInsertConfirm.jsp").forward(req, res);

	}
}
