package test;
import java.sql.*;
public class UpdateProfileDAO 
{
  public int k = 0;
  public int update(UserBean ub)
  { 
	  try {
		  Connection con = DBConnection.getCon();
		  PreparedStatement ps = con.prepareStatement
				  ("update Userreg61 set  lname=?,addr=?,mid=?,phno=? where uname=? and pword=?");
		
		 
		  ps.setString(1, ub.getlName());
		  ps.setString(2, ub.getAddr());
		  ps.setString(3, ub.getmId());
		  ps.setLong(4, ub.getPhNo());
		  ps.setString(5, ub.getuName());
		  ps.setString(6, ub.getpWord());
		  k = ps.executeUpdate();
	  }catch(Exception e ) {e.printStackTrace();}
	  return k;
  }
}
