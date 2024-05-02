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
@WebServlet("/clientviewallproduct")
public class ClientViewAllProductServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException 
	{
		HttpSession hs=req.getSession();
		if(hs==null) 
		{
			req.setAttribute("msg", "Session Expired...<br>");
			req.getRequestDispatcher("Fail.jsp");
			
		}
		else {
			ArrayList<ProductBean> al=new ClientViewAllProductDAO().retrive();
			hs.setAttribute("alist", al);
			req.getRequestDispatcher("ClientViewAllProduct.jsp").forward(req, res);
		}
	}

}
