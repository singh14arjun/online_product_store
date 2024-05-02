package online.product.store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProductDAO 
{
	public int k=0;
	
	public int insert(ProductBean productbean)
	{
		try {
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into product58 values (?,?,?,?)");
			ps.setString(1, productbean.getProductcode());
			ps.setString(2, productbean.getProductname());
			ps.setDouble(3, productbean.getProductprice());
			ps.setInt(4, productbean.getProductqty());
			k=ps.executeUpdate();
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return k;
	}

}
