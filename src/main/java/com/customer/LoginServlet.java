package com.customer;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String username = request.getParameter("uid");
        String password = request.getParameter("pass");
        
        try {
            // Validate user credentials
            List<Customer> cusDetails = CustomerDBUtil.validate(username, password);
            
            // Check if user details are found
            if (cusDetails == null || cusDetails.isEmpty()) {
                // If no user is found, set an error message
                request.setAttribute("errorMessage", "Invalid username or password. Please try again.");
                
                // Forward to login page with error message
                RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                dispatcher.forward(request, response);
            } else {
                // If user details are found, set customer details for the next page
                request.setAttribute("cusDetails", cusDetails);
                
                // Forward to user account page
                RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Handle exceptions appropriately, possibly forwarding to an error page
        }
    }
}
