package com.car;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.BookingDBUtil;


@WebServlet("/CarInsert")
public class CarInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String number = request.getParameter("number");
		String year = request.getParameter("year");
		String brand = request.getParameter("brand");
		String model = request.getParameter("model");
		String type = request.getParameter("type");
		
		boolean isTrue;
		
		isTrue = CarDBUtil.insertcar(number, year, brand, model, type);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("managerPanel.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	
	}

}
