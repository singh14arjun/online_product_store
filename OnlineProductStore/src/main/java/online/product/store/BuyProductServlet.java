package online.product.store;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
@WebServlet("/buy")
public class BuyProductServlet extends HttpServlet 
{
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res )throws ServletException,IOException
	{
		String pC=req.getParameter("pcode");
		
		ProductBean pb=new BuyProductDAO().buy(pC);
		if(pb==null) 
		{
			req.setAttribute("msg", "Invalid productcode");
			req.getRequestDispatcher("ClientFail.jsp").forward(req, res);
			
		}
		else 
		{
			HttpSession hs=req.getSession();
			hs.setAttribute("pbean", pb);
			req.getRequestDispatcher("BuyProduct.jsp").forward(req, res);
			
		}
	}

}
