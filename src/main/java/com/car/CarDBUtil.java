package com.car;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.booking.Booking;


public class CarDBUtil {
	
	public static boolean insertcar(String number, String year, String brand, String model, String type) {
		
		boolean isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/rent";
		String user = "root";
		String pass = "livini";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			String sql = "insert into car values(0,'"+number+"','"+year+"','"+brand+"','"+model+"','"+type+"')";
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
	
	
	public static List<Car> viewAllCars() {
	    List<Car> cars = new ArrayList<>();
	    
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
	        String sql = "SELECT * FROM car";
	        ResultSet rs = stmt.executeQuery(sql);

	        // Iterate through the result set
	        while (rs.next()) {
	            int id = rs.getInt("id");
	            String number = rs.getString("number");
	            String year = rs.getString("year");
	            String brand = rs.getString("brand");
	            String model = rs.getString("model");
	            String type = rs.getString("type");
	            
	            // Create a Booking object and add it to the list
	            Car car = new Car(id,number,year,brand,model,type);
	            cars.add(car);
	            System.out.println("Car added: " + number); // Debug statement
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return cars;
	}

	
	public static boolean deleteCar(int carId) {
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
	        String sql = "DELETE FROM car WHERE id = " + carId;

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
