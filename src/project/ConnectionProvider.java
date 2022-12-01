package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnectionProvider {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/datawarehouse","root","");
			return con;
		}catch(Exception e) {
			System.out.print(e);
			return null;
		}
	}
	
	public static ResultSet executeSQL (String sql) throws Exception {
		Connection con = getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		return rs;
	}
}
