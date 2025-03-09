package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.booking.Booking;

public class CustomerDBUtil {
	
	public static List<Customer> validate(String userName, String password){
		ArrayList<Customer> cus = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/rent";
		String user = "root";
		String pass = "livini";
		
		
		//validate
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql = "select * from customer where username = '"+userName+"' and password='"+password+"' and isDeleted=FALSE";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				
				Customer c = new Customer(id,name,email,phone,userU,passU);
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
	
	
	public static boolean insertcustomer(String name, String email, String phone, String username, String password) {
		
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/rent";
		String user = "root";
		String pass = "livini";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql = "insert into customer values(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"',FALSE)";
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
	
	
	
	public static List<Customer> viewAllCustomers() {
	    List<Customer> cus = new ArrayList<>();
	    
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
	        String sql = "SELECT * FROM customer WHERE isDeleted=FALSE";
	        ResultSet rs = stmt.executeQuery(sql);

	        // Iterate through the result set
	        while (rs.next()) {
	        	int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
	            
	            // Create a Booking object and add it to the list
				Customer c = new Customer(id,name,email,phone,userU,passU);
				cus.add(c);
	            System.out.println("Customer added: " + name); // Debug statement
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return cus;
	}
	
	
	public static boolean softDeleteCustomer(int custId) {
	    boolean isSuccess = false;

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
	        
	        // SQL query to mark the customer as deleted
	        String sql = "UPDATE customer SET isDeleted = TRUE WHERE id = " + custId;
	        int rs = stmt.executeUpdate(sql);

	        if (rs > 0) {
	            isSuccess = true;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}
	
	
}
