package online.product.store;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class DeleteProductDAO {

	  public int k = 0 ;
	  public int delete(ProductBean pb) 
	  {
		  try {
			  Connection con=DBConnection.getCon();
			  PreparedStatement ps=con.prepareStatement("delete from product58 where pcode=?");
			  ps.setString(1, pb.getProductcode());
			  k=ps.executeUpdate();
		  }
		  catch (Exception e) {e.printStackTrace();
		}
		return k;
		  
	  }
	}
