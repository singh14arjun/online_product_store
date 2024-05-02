package online.product.store;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/edit")
public class EditProductServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession();
		if (hs == null) {
			req.setAttribute("msg", "Session expired...<br>");
			req.getRequestDispatcher("Fail.jsp").forward(req, res);
		} else {
			req.getRequestDispatcher("EditProduct.jsp").forward(req, res);
		}
	}

}
