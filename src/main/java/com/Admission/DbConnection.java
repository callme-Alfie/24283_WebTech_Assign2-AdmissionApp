package com.Admission;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	 private static String dbUrl = "jdbc:mysql://localhost:3306/student_admission_db";
	    private static  String username = "root";
	    private static  String password = "Un1vers@l";
	    
	    static {
	        try {
	            // Register MySQL JDBC driver
	            Class.forName("com.mysql.cj.jdbc.Driver");
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	            throw new RuntimeException("Failed to load MySQL JDBC driver");
	        }
	    }

	    public static Connection getConnection() throws SQLException {
	        return DriverManager.getConnection(dbUrl, username, password);
	    }
}
