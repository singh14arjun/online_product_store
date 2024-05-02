package online.product.store;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductDAO {
	public int k = 0;

	public int update(ProductBean pb) {
		try 
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("update product58 set  pname=?, pprice=?, pqty=? where pcode=?");	    			
			ps.setString(1, pb.getProductname());
			ps.setDouble(2, pb.getProductprice());
			ps.setInt(3, pb.getProductqty());
			ps.setString(4, pb.getProductcode());
			
			k=ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;
	}

}
