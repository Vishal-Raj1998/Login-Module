package com.as;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.xdevapi.Statement;

public class LoginDao {
	String query="SELECT * FROM Login where username=? and password=?";
	String driver="com.mysql.cj.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/Student";
	private String user="root";
	private String pass="Vishal@1234";
	Connection con;
	PreparedStatement pst;
	ResultSet rst;
	LoginDao() throws ClassNotFoundException{
		Class.forName(driver);
		try {
			con=DriverManager.getConnection(url,user,pass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean check(String uname, String Password) throws SQLException {
		System.out.println("This is inside check method "+uname+" "+Password);
		pst=con.prepareStatement(query);
		pst.setString(1,uname);
		pst.setString(2, Password);
		rst=pst.executeQuery();
		if(rst.next()) {
			return true;
		}
		else
			return false;
	}
	
}
