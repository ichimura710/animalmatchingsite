package Servlet;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig
public class AnimalInsertConfirm extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String kind = req.getParameter("kind");
		String birthday = req.getParameter("birthday");
		String sex = req.getParameter("sex");
		String contact = req.getParameter("contact");


	try {jakarta.servlet.http.Part filePart = req.getPart("file");
	    InputStream fileContent = filePart.getInputStream();
	    byte[] byteArray = getByteArray(fileContent);
	    String base64String = Base64.getEncoder().encodeToString(byteArray);

		String animal_chara = req.getParameter("animal_chara");
		String user_area = req.getParameter("user_area");


		req.setAttribute("kind", kind);
		req.setAttribute("birthday", birthday);
		req.setAttribute("sex", sex);
		req.setAttribute("contact", contact);
		req.setAttribute("image", base64String);
		req.setAttribute("animal_chara", animal_chara);
		req.setAttribute("user_area", user_area);
		}catch (Exception e) {e.printStackTrace();}


		req.getRequestDispatcher("animalInsertConfirm.jsp").forward(req, res);

	}
	private static byte[] getByteArray(InputStream is) throws Exception {
	    ByteArrayOutputStream b = new ByteArrayOutputStream();
	    BufferedOutputStream os = new BufferedOutputStream(b);
	    while (true) {
	      int i = is.read();
	      if (i == -1) break;
	      os.write(i);
	    }
	    os.flush();
	    os.close();
	    return b.toByteArray();
	  }

}
