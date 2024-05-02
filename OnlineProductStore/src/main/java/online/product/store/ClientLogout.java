package online.product.store;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/clientlogout")
public class ClientLogout extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null) {
			req.setAttribute("msg", "Session expired..<br>");
		}
		else {
			hs.invalidate();
			req.setAttribute("msg","Client Logged Out Successfully...<br>");
		}
		req.getRequestDispatcher("ClientFail.jsp").forward(req, res);
	}

}