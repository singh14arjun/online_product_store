package online.product.store;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ClientRegisterDAO {

	public int k = 0;

	public int insert(ClientRegisterBean crb) {
		try {
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into client58 values (?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, crb.getUname());
			ps.setString(2, crb.getPassword());
			ps.setString(3, crb.getFname());
			ps.setString(4, crb.getLname());
			ps.setString(5, crb.getDOB());
			ps.setString(6, crb.getGender());
			ps.setString(7, crb.getEmail());
			ps.setLong(8, crb.getPhNo());
			ps.setString(9, crb.getCity());
			ps.setString(10, crb.getState());
			ps.setInt(11, crb.getPincode());
			k=ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return k;
	}

}
