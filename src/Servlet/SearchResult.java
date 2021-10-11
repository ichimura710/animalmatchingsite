package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import Dao.AnimalDao;
import Dto.AnimalDto;
import Util.dbUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchResult extends HttpServlet {
	public Connection con;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String kind = req.getParameter("kind");
		String sex = req.getParameter("sex");
		String user_area = req.getParameter("user_area");

		List<AnimalDto> animalList = null;

		try {
			AnimalDao animal = new AnimalDao(dbUtil.getConnection());
			animalList = animal.selectResult(kind, sex, user_area);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		if(animalList.size()!=0) {
		req.setAttribute("animalList", animalList);
		req.getRequestDispatcher("searchResult.jsp").forward(req, res);
		}else {
			req.setAttribute("animalList", animalList);
			req.setAttribute("error","お探しの条件で動物が見つかりませんでした");
			req.getRequestDispatcher("searchResult.jsp").forward(req, res);
		}


	}

}
