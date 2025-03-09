package com.complaint;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.BookingDBUtil;


@WebServlet("/ComplaintInsert")
public class ComplaintInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cusid = request.getParameter("cusid");
		String type = request.getParameter("type");
		String date = request.getParameter("date");
		String complaint = request.getParameter("complaint");
		
		boolean isTrue;
		
		int cusidInt = Integer.parseInt(cusid);
		isTrue = ComplaintDBUtil.insertcomplaint(cusidInt, type, date, complaint);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
