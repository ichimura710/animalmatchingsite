package Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AnimalInsert extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String kind = req.getParameter("kind");
		String birthday = req.getParameter("birthday");
		String sex = req.getParameter("sex");
		String contact = req.getParameter("contact");
		String image = req.getParameter("image");
		String animal_chara = req.getParameter("animal_chara");
		String user_area = req.getParameter("user_area");

		req.setAttribute("kind", kind);
		req.setAttribute("birthday", birthday);
		req.setAttribute("sex", sex);
		req.setAttribute("image", image);
		req.setAttribute("animal_chara", animal_chara);
		req.setAttribute("user_area", user_area);
		req.setAttribute("user_area", user_area);
		req.setAttribute("contact", contact);

		req.getRequestDispatcher("animalInsert.jsp").forward(req, res);

	}

}
