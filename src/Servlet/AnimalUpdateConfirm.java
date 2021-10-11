package Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AnimalUpdateConfirm extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String mail_address = req.getParameter("mail_address");
		String password = req.getParameter("password");
		String kind = req.getParameter("kind");
		String birthday = req.getParameter("birthday");
		String sex = req.getParameter("sex");
		String image = req.getParameter("image");
		String animal_chara = req.getParameter("animal_chara");


		req.setAttribute("mail_address", mail_address);
		req.setAttribute("password", password);
		req.setAttribute("kind", kind);
		req.setAttribute("birthday", birthday);
		req.setAttribute("sex", sex);
		req.setAttribute("image", image);
		req.setAttribute("animal_chara", animal_chara);



		req.getRequestDispatcher("animalUpdateConfirm.jsp").forward(req, res);

	}

}
