package com.pd.cloudtest.utils;

import java.sql.*;
 
public class TestJDBCConnection {
 
	public static void main( String args[]) {
	 
	//String connectionURL = "jdbc:postgresql://localhost:5432/movies;user=java;password=samples";
        System.out.println("Setting Connection URL1...");
		String connectionURL = "jdbc:mysql://juhi-test.c7cdh1svu0jm.us-west-1.rds.amazonaws.com/HR?user=DBO&password=!Computer1";
	// Change the connection string according to your db, ip, username and password

		Connection con = null;
		try {
			// Load the Driver class.
			//    Class.forName("org.postgresql.Driver");
				System.out.println("Setting MySQL Driver");
				Class.forName("com.mysql.jdbc.Driver");
				// If you are using any other database then load the right driver here.
			 
			    //Create the connection using the static getConnection method
		        System.out.println("Getting Connection");
			    con = DriverManager.getConnection (connectionURL);
			 
			    //Create a Statement class to execute the SQL statement
			    Statement stmt = con.createStatement();
			 
			    //Execute the SQL statement and get the results in a Resultset
		        System.out.println("Executing query...");
			    ResultSet rs = stmt.executeQuery("select FIRST_NAME, LAST_NAME from HR.TEST");
		        System.out.println("Query Completed");
			 
			    // Iterate through the ResultSet, displaying two values
			    // for each row using the getString method
			 
			    while (rs.next())
			    {
			        System.out.println("Name= " + rs.getString("first_name") + " " + rs.getString("last_name") );
			        //Build result JSON for UI
			        // ...
			    }
			    // Close the connection
			    con.close();
		
		}
		catch (SQLException e) {
		    e.printStackTrace();
		}
		catch (Exception e) {
		    e.printStackTrace();
		}
		finally {
		}
	}
}