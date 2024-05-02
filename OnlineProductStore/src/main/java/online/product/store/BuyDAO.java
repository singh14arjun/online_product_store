package online.product.store;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BuyDAO {
	public int k = 0;

	public int updateQty(ProductBean pb) {
		try {
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("update product58 set pqty=? where pcode=?" );
			ps.setInt(1, pb.getProductqty());
			ps.setString(2, pb.getProductcode());
			
			k=ps.executeUpdate();

		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return k;
	}

}
