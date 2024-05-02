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
@WebServlet("/delete")
public class DeleteProductServlet extends HttpServlet
{
	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession();
		if(hs==null) {
			  req.setAttribute("msg", "Session Expired...<br>");
			  req.getRequestDispatcher("Fail.jsp").forward(req, res);
		}
		else {

			ArrayList<ProductBean> al = (ArrayList<ProductBean>) hs.getAttribute("alist");

			String pCode = req.getParameter("pcode");

			Iterator<ProductBean> it = al.iterator();
			while (it.hasNext()) {
				ProductBean pb = (ProductBean) it.next();

				if (pCode.equals(pb.getProductcode())) {
					it.remove();

					int k = new DeleteProductDAO().delete(pb);
					if (k > 0) {

						req.setAttribute("msg", "Product Deleted Successfully....<br>");
						req.getRequestDispatcher("DeleteProduct.jsp").forward(req, res);
					}
					break;
				}
				
			}
		}
	}

}

	

