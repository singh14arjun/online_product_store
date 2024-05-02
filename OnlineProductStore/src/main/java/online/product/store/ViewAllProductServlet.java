package online.product.store;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
@WebServlet("/viewallproduct")
public class ViewAllProductServlet extends HttpServlet
{
    protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException 
    {
    	HttpSession hs=req.getSession();
		if(hs==null) {
			req.setAttribute("msg", "Session Expired...<br>");
			req.getRequestDispatcher("Fail.jsp").forward(req, res);
		}
		else {
			ArrayList<ProductBean> al=new ViewAllProductDAO().retrive();
			hs.setAttribute("alist", al);
			req.getRequestDispatcher("ViewAllProduct.jsp").forward(req, res);
		}
	}
}
