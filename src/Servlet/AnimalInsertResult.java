package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import Dao.AnimalDao;
import Util.dbUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AnimalInsertResult extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String kind = req.getParameter("kind");
		String birthday = req.getParameter("birthday");
		String sex = req.getParameter("sex");
		String contact = req.getParameter("contact");
		String image = req.getParameter("image");
		String animal_chara = req.getParameter("animal_chara");
		String user_area = req.getParameter("user_area");

		try {
			AnimalDao animal = new AnimalDao(dbUtil.getConnection());
			animal.animalInsert(kind, birthday, sex, contact,  animal_chara, user_area, image);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			req.setAttribute("error", "正常に登録できませんでした");
		}

		req.setAttribute("kind", kind);
		req.setAttribute("birthday", birthday);
		req.setAttribute("sex", sex);
		req.setAttribute("contact", contact);
		req.setAttribute("image", image);
		req.setAttribute("animal_chara", animal_chara);
		req.setAttribute("user_area", user_area);



		req.getRequestDispatcher("animalInsertResult.jsp").forward(req, res);

	}

}
