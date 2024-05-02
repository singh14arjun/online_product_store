package online.product.store;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/clientregister")
public class ClientRegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession();
		if(hs==null) {
			req.setAttribute("msg", "Session expired");
			req.getRequestDispatcher("Fail.jsp").forward(req, res);
		}
		else {
			ClientRegisterBean crb=new ClientRegisterBean();
			crb.setUname(req.getParameter("uname"));
			crb.setPassword(req.getParameter("pword"));
			crb.setFname(req.getParameter("fname"));
			crb.setLname(req.getParameter("lname"));
			crb.setDOB(req.getParameter("dob"));
			crb.setGender(req.getParameter("gender"));
			crb.setEmail(req.getParameter("mid"));
			crb.setPhNo(Long.parseLong(req.getParameter("phno")));
			crb.setCity(req.getParameter("city"));
			crb.setState(req.getParameter("state"));
			crb.setPincode(Integer.parseInt(req.getParameter("pincode")));
			
			int k=new ClientRegisterDAO().insert(crb);
			if(k>0) {
				req.setAttribute("msg", "User Register Successfully..<br>");
    			req.getRequestDispatcher("ClientRegister.jsp").forward(req, res);
				
			}
			
		}
		
	}

}
