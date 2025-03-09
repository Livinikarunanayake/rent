package com.driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.Customer;

public class DriverDBUtil {
	
	public static List<Driver> validate(String userName, String password){
		ArrayList<Driver> cus = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/rent";
		String user = "root";
		String pass = "livini";
		
		
		//validate
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql = "select * from driver where username = '"+userName+"' and password='"+password+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String phone = rs.getString(4);
				String nic = rs.getString(5);
				String userU = rs.getString(6);
				String passU = rs.getString(7);
				
				Driver c = new Driver(id,name,address,phone,nic,userU,passU);
				cus.add(c);
			}
			else {
	            // If no record is found, set an error message
	            return null; // Returning null to indicate no matching user
	        }
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return cus;
	}
	
	
	public static boolean insertdriver(String name, String address, String phone, String nic,String username, String password) {
		
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/rent";
		String user = "root";
		String pass = "livini";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql = "insert into driver values(0,'"+name+"','"+address+"','"+phone+"','"+nic+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	
	public static List<Driver> viewAllDrivers() {
	    List<Driver> cus = new ArrayList<>();
	    
	    // Database connection details
	    String url = "jdbc:mysql://localhost:3306/rent";
	    String user = "root";
	    String pass = "livini";

	    try {
	        // Load the MySQL driver
	        Class.forName("com.mysql.jdbc.Driver");

	        // Establish the connection
	        Connection con = DriverManager.getConnection(url, user, pass);
	        Statement stmt = con.createStatement();
	        
	        // SQL query to fetch all bookings
	        String sql = "SELECT * FROM driver";
	        ResultSet rs = stmt.executeQuery(sql);

	        // Iterate through the result set
	        while (rs.next()) {
	        	int id = rs.getInt(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String phone = rs.getString(4);
				String nic = rs.getString(5);
				String userU = rs.getString(6);
				String passU = rs.getString(7);
	            
	            // Create a Booking object and add it to the list
				Driver c = new Driver(id,name,address,phone,nic,userU,passU);
				cus.add(c);
	            System.out.println("Driver added: " + name); // Debug statement
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return cus;
	}
	
	

	public static boolean deleteDriver(int driverId) {
	    boolean isSuccess = false;

	    // Create database connection
	    String url = "jdbc:mysql://localhost:3306/rent";
	    String user = "root";
	    String pass = "livini";

	    try {
	        // Load the JDBC driver
	        Class.forName("com.mysql.jdbc.Driver");

	        // Create a connection to the database
	        Connection con = DriverManager.getConnection(url, user, pass);

	        // Create a statement to execute the query
	        Statement stmt = con.createStatement();

	        // SQL query to delete the complaint by its ID
	        String sql = "DELETE FROM driver WHERE id = " + driverId;

	        // Execute the update (DELETE operation)
	        int rs = stmt.executeUpdate(sql);

	        // Check if the deletion was successful
	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}
	
	
	

}
