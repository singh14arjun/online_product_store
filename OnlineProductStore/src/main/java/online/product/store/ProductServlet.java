package online.product.store;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/addproduct")
public class ProductServlet extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession();
		if (hs == null) {
			req.setAttribute("msg", "Session expired");
			req.getRequestDispatcher("Fail.jsp").forward(req, res);

		}
		else {
			ProductBean pb=new ProductBean();
			pb.setProductcode(req.getParameter("pcode"));
			pb.setProductname(req.getParameter("pname"));
			pb.setProductprice(Double.parseDouble(req.getParameter("pprice")));
			pb.setProductqty(Integer.parseInt(req.getParameter("pqty")));
			
			int k=new ProductDAO().insert(pb);
			if(k>0) {

				req.setAttribute("msg", "User Register Successfully..<br>");
    			req.getRequestDispatcher("ProductAddSuccess.jsp").forward(req, res);
				
			}
			else {
				req.setAttribute("msg", "Failed to Add Product Details");
				req.getRequestDispatcher("Fail.jsp").forward(req, res);

			}
		}

	}

}
