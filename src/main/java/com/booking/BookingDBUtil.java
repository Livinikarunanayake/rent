package com.booking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class BookingDBUtil {

	
	
	public static boolean insertbooking(int cusid,String name, String address, String phone, String destination) {
		
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/rent";
		String user = "root";
		String pass = "livini";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql = "insert into booking values(0,'"+cusid+"','"+name+"','"+address+"','"+phone+"','"+destination+"')";
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
	
	
	
	public static List<Booking> viewAllBookings() {
	    List<Booking> bookings = new ArrayList<>();
	    
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
	        String sql = "SELECT * FROM booking";
	        ResultSet rs = stmt.executeQuery(sql);

	        // Iterate through the result set
	        while (rs.next()) {
	            int id = rs.getInt("id");
	            int cusid = rs.getInt("cusid");
	            String name = rs.getString("name");
	            String address = rs.getString("address");
	            String phone = rs.getString("phone");
	            String destination = rs.getString("destination");
	            
	            // Create a Booking object and add it to the list
	            Booking booking = new Booking(id, cusid, name, address, phone, destination);
	            bookings.add(booking);
	            System.out.println("Booking added: " + name); // Debug statement
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return bookings;
	}

	
	
	
	
	
	
}
