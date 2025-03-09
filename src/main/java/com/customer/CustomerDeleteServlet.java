package com.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerDeleteServlet")
public class CustomerDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int custId = Integer.parseInt(request.getParameter("custId"));

        boolean success = CustomerDBUtil.softDeleteCustomer(custId);

        if (success) {
            response.sendRedirect("allcustomers.jsp"); 
        } else {
            response.getWriter().write("Error deleting customer.");
        }
	}

}
