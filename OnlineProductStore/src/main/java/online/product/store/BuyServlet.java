package online.product.store;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/buyproduct")
public class BuyServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		  int qty=Integer.parseInt(req.getParameter("pqty"));
		  int bqty=Integer.parseInt(req.getParameter("qty"));
          Float aamount=Float.parseFloat(req.getParameter("pprice"));
          String pcode=(req.getParameter("pcode"));
    	  ClientRegisterBean crb=new ClientRegisterBean();

          
          if(bqty>qty) {
        	  req.setAttribute("msg", bqty+" Quantity is not available!<br>Try Again");
        	  req.getRequestDispatcher("FailBuy.jsp").forward(req, res);
          }
          else {
              float totalAmount=aamount*bqty;

        	  qty=qty-bqty;
        	  ProductBean pb=new ProductBean();
        	  pb.setProductqty(qty);
        	  pb.setProductcode(pcode);
        	  
        	  int k=new BuyDAO().updateQty(pb);
        	  
        	  if(k > 0) {
        		  HttpSession hs=req.getSession();
        		  hs.setAttribute("bpb", crb);
        		  req.setAttribute("msg", "Your Total Amount is :"+totalAmount);
        		  req.getRequestDispatcher("BuyProductSuccess.jsp").forward(req, res);
        	  }
        	  else {
        		  req.setAttribute("msg","Fail due to some reason");
        		  req.getRequestDispatcher("FailBuy.jsp");
        	  }
          }
	}

}
