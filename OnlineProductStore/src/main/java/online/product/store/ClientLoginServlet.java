package online.product.store;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/clientlogin")
public class ClientLoginServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		String uN=req.getParameter("uname");
		String pW=req.getParameter("pword");
		
		ClientRegisterBean crb=new ClientLoginDAO().login(uN, pW);
		if(crb==null) 
		{req.setAttribute("msg", "Invalid username/password");
		req.getRequestDispatcher("ClientFail.jsp").forward(req, res);
			
		}
		else {

			HttpSession hs=req.getSession();
			hs.setAttribute("crbean", crb);
			req.setAttribute("msg", "User login Successfully...<br>");
			req.getRequestDispatcher("ClientLoginSuccess.jsp").forward(req, res);
		}
	}

}
