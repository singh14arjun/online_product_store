package online.product.store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BuyProductDAO {
	public ProductBean pb = null;

	public ProductBean buy(String pC) {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("select * from product58 where pcode=?");
			ps.setString(1, pC);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				pb=new ProductBean();
				pb.setProductcode(rs.getString(1));
				pb.setProductname(rs.getString(2));
				pb.setProductprice(rs.getDouble(3));
				pb.setProductqty(rs.getInt(4));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return pb;

	}

}
