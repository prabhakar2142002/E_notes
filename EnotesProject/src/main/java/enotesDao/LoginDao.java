package enotesDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import enotesModel.LoginModel;

public class LoginDao {

	public boolean Login(LoginModel lm) throws Exception {
		boolean f=false;
		String url = "jdbc:mysql://127.0.0.1:3306/enotes?characterEncoding=UTF-8";
	     String username = "root";
	     String pswd = "root";
	     Class.forName("com.mysql.cj.jdbc.Driver");
	     Connection con = DriverManager.getConnection(url, username, pswd);
	     PreparedStatement pst = con.prepareStatement("select username ,cpswd from enote_reg");
	        
	     ResultSet rs=pst.executeQuery();
	     PreparedStatement pstm = con.prepareStatement("insert into enotes_login values(?,?)");
	     while(rs.next()) {
	  if(lm.getUsername().equals(rs.getString(1)) && lm.getCpswd().equals(rs.getString(2))) {
	 	 pstm.setString(1, lm.getUsername());
	 	 pstm.setString(2, lm.getCpswd());
	  }
	     }
	     	int i=pstm.executeUpdate();
	     	if(i==1) {
	     		f=true;
	     	}
	         con.close();
	         return f;
	       
	}
}






/*=========MY OWN CODE=======================
package enotesDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import enotesModel.LoginModel;

public class LoginDao {

	public void Login(LoginModel lm) throws Exception {
		String url = "jdbc:mysql://127.0.0.1:3306/enotes?characterEncoding=UTF-8";
	     String username = "root";
	     String pswd = "root";
	     Class.forName("com.mysql.cj.jdbc.Driver");
	     Connection con = DriverManager.getConnection(url, username, pswd);
	     PreparedStatement pst = con.prepareStatement("select username ,cpswd from enote_reg");
	        
	     ResultSet rs=pst.executeQuery();
	     PreparedStatement pstm = con.prepareStatement("insert into enotes_login values(?,?)");
	     while(rs.next()) {
	  if(lm.getUsername().equals(rs.getString(1)) && lm.getCpswd().equals(rs.getString(2))) {
	 	 pstm.setString(1, lm.getUsername());
	 	 pstm.setString(2, lm.getCpswd());
	  }
	     }
	     	pstm.executeUpdate();
	         con.close();
	       
	}
}
*/