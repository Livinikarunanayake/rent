package com.driver;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.driver.Driver;
import com.driver.DriverDBUtil;

@WebServlet("/LoginDriverServlet")
public class LoginDriverServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String username = request.getParameter("uid");
        String password = request.getParameter("pass");
        
        try {
            // Validate driver credentials
            List<Driver> driverDetails = DriverDBUtil.validate(username, password);
            
            // Check if driver details are found
            if (driverDetails == null || driverDetails.isEmpty()) {
                // If no driver is found, set an error message
                request.setAttribute("errorMessage", "Invalid username or password. Please try again.");
                
                // Forward to login page with error message
                RequestDispatcher dispatcher = request.getRequestDispatcher("driverlogin.jsp");
                dispatcher.forward(request, response);
            } else {
                // If driver details are found, set driver details for the next page
                request.setAttribute("driverDetails", driverDetails);
                
                // Forward to driver account page
                RequestDispatcher dispatcher = request.getRequestDispatcher("driveraccount.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Handle exceptions appropriately, possibly forwarding to an error page
        }
    }
}
