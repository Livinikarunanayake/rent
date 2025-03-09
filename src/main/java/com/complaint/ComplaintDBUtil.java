package com.complaint;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.booking.Booking;


public class ComplaintDBUtil {
	
	public static boolean insertcomplaint(int cusid,String type, String date, String complaint) {
		
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/rent";
		String user = "root";
		String pass = "livini";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql = "insert into complaint values(0,'"+cusid+"','"+type+"','"+date+"','"+complaint+"')";
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
	
	
	public static List<Complaint> viewAllComplaints() {
	    List<Complaint> complaints = new ArrayList<>();
	    
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
	        String sql = "SELECT * FROM complaint";
	        ResultSet rs = stmt.executeQuery(sql);

	        // Iterate through the result set
	        while (rs.next()) {
	            int id = rs.getInt("id");
	            int cusid = rs.getInt("cusid");
	            String type = rs.getString("type");
	            String date = rs.getString("date");
	            String complaint = rs.getString("complaint");
	            
	            // Create a Booking object and add it to the list
	            Complaint comp = new Complaint(id, cusid, type, date, complaint);
	            complaints.add(comp);
	            System.out.println("Complaint added: " + id); // Debug statement
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return complaints;
	}
	
	
	public static boolean deleteComplaint(int complaintId) {
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
	        String sql = "DELETE FROM complaint WHERE id = " + complaintId;

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
