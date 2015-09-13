package com.pd.cloudtest.utils;

//import easysoft.sql.*;
import java.sql.*;
import java.util.*;

public class TestODBCConnection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try
		{
			
			System.setProperty( "java.library.path", "C:/Program Files/Easysoft Limited/Easysoft JDBC-Access Gateway/32-Bits/Libs/esdbcapi.dll");
			Class.forName("easysoft.sql.esMdbDriver");
			System.out.println("Driver registered");
			Driver driver = null;
			DriverPropertyInfo props[] = null;
			
			String connectionUrl =
						"jdbc:easysoft:mdb?DBQ=C:/workspaces/cloudTest/cloudTest1.accdb";
			System.out.println("Connection URL set to: " + connectionUrl);
			driver = DriverManager.getDriver(connectionUrl);
			props = driver.getPropertyInfo(connectionUrl, new Properties());
			
			System.out.println ("JDBC URL Attributes");
			for (int i = 0; i < props.length; i++) 
			{
				
				System.out.print ("\t" + props[i].name);
				System.out.print (" = ");
				System.out.print (props[i].value);
				System.out.print (" : ");
				System.out.println (props[i].description +".");
			}
			
			System.out.println("Build Path is: " + System.getProperty( "java.library.path"));
			Connection con = DriverManager.getConnection(connectionUrl);
			System.out.println("Connection successful!!");
			System.out.println("Connection schema: " + con.getSchema());
		}
		catch (ClassNotFoundException cnfEx)
		{
			System.out.println("Unexpected exception occurred: class easysoft.sql.esMdbDriver not found!");
		}
		catch(Exception ex)
		{
			System.out.println("Unexpected exception occurred: " + ex.getMessage());
			ex.printStackTrace();
		}
	}

}

