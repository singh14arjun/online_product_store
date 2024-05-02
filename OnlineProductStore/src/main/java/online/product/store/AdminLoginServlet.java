package online.product.store;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		String uN=req.getParameter("uname");
		String pW=req.getParameter("pword");
		
		AdminBean ab=new AdminLoginDAO().login(uN, pW);
		if(ab==null) {
			req.setAttribute("msg", "Invalid username/ID and password");
			req.getRequestDispatcher("Fail.jsp").forward(req, res);
		}
		else {
			HttpSession httpsession =req.getSession();
			httpsession.setAttribute("abean", ab);
			req.getRequestDispatcher("AdminLoginSuccess.jsp").forward(req, res);
		}
	}
	
}
