package online.product.store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ViewAllProductDAO {
	public ArrayList<ProductBean> al = new ArrayList<ProductBean>();

	public ArrayList<ProductBean> retrive() {
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("select * from product58");
			ResultSet rs=ps.executeQuery();

			while(rs.next())
			{
				ProductBean pb=new ProductBean();
				pb.setProductcode(rs.getString(1));
				pb.setProductname(rs.getString(2));
				pb.setProductprice(rs.getFloat(3));
				pb.setProductqty(rs.getInt(4));
				al.add(pb);// bean added to arraylist
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;

	}
}
