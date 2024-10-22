package enotesDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import enotesModel.RegisterModel;

public class RegisterDao {
 public void register(RegisterModel m) throws ClassNotFoundException, SQLException {
	 String url = "jdbc:mysql://127.0.0.1:3306/enotes?characterEncoding=UTF-8";
     String username = "root";
     String pswd = "root";
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection con = DriverManager.getConnection(url, username, pswd);
     PreparedStatement pst = con.prepareStatement("INSERT INTO enote_reg VALUES (?, ?, ?, ?)");
     pst.setString(1, m.getUsername());
     pst.setLong(2, m.getPhno());
     pst.setString(3, m.getPswd());
     pst.setString(4, m.getCpswd());
     pst.executeUpdate();
     con.close();
     System.out.println("Data inserted successfully");
 }
}
