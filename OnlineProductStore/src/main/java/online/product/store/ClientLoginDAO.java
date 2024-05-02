package online.product.store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ClientLoginDAO {
	public ClientRegisterBean crb = null;

	public ClientRegisterBean login(String uN, String pW) {
		try 
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("Select * from client58 where uname=? and password=?");
			ps.setString(1, uN);
			ps.setString(2, pW);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				crb=new ClientRegisterBean();
				crb.setUname(rs.getString(1));
				crb.setPassword(rs.getString(2));
				crb.setFname(rs.getString(3));
				crb.setLname(rs.getString(4));
				crb.setDOB(rs.getString(5));
				crb.setGender(rs.getString(6));
				crb.setEmail(rs.getString(7));
				crb.setPhNo(rs.getLong(8));
				crb.setCity(rs.getString(9));
				crb.setState(rs.getString(10));
				crb.setPincode(rs.getInt(11));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return crb;

	}

}
