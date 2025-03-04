package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SingletonConnection {
	
	private static Connection connection;
	
	
	
 static {
	 
		
     try {
    	 Class.forName("com.mysql.cj.jdbc.Driver");
		connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/med_reservation","root","");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (ClassNotFoundException e1) {
		// TODO Auto-generated catch block
		 e1.printStackTrace();
	}
     
     
	 
 }
	
public static Connection getConnection() {
	return connection;
}
	
   
	
}
