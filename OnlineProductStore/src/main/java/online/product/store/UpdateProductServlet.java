package online.product.store;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/update")
public class UpdateProductServlet extends HttpServlet {
	@SuppressWarnings("unchecked")

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession hs = req.getSession();
		if (hs == null) {
			req.setAttribute("msg", "Session Expired...<br>");
			req.getRequestDispatcher("Fail.jsp").forward(req, res);
		} else {
			ArrayList<ProductBean> al = (ArrayList<ProductBean>) hs.getAttribute("alist");

			String pCode = req.getParameter("pcode");

			Iterator<ProductBean> it = al.iterator();
			while (it.hasNext()) {
				ProductBean pb = (ProductBean) it.next();

				if (pCode.equals(pb.getProductcode())) {
					pb.setProductname(req.getParameter("pname"));
					pb.setProductprice(Float.parseFloat(req.getParameter("pprice")));
					pb.setProductqty(Integer.parseInt(req.getParameter("pqty")));
					int k = new UpdateProductDAO().update(pb);
					if (k > 0) {
						req.setAttribute("msg", "Product Updated Successfully....<br>");
						req.getRequestDispatcher("UpdateProduct.jsp").forward(req, res);
					}
					break;
				}
			}
		}

	}
}
