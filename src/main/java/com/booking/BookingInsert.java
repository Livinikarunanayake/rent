package com.booking;

import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.CustomerDBUtil;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

@WebServlet("/BookingInsert")
public class BookingInsert extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String cusid = request.getParameter("cusid");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String destination = request.getParameter("destination");

        boolean isTrue;

        // Parse Customer ID to Integer
        int cusidInt = Integer.parseInt(cusid);

        // Insert booking into the database
        isTrue = BookingDBUtil.insertbooking(cusidInt, name, address, phone, destination);

        if (isTrue) {
            // Generate PDF for successful booking
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition", "attachment; filename=BookingInvoice.pdf");

            try (OutputStream out = response.getOutputStream()) {
                Document document = new Document();
                PdfWriter.getInstance(document, out);

                document.open();
                document.add(new Paragraph("Booking Invoice",
                        com.itextpdf.text.FontFactory.getFont(com.itextpdf.text.FontFactory.HELVETICA_BOLD, 16)));
                document.add(new Paragraph(" "));
                document.add(new Paragraph("Customer ID: " + cusid));
                document.add(new Paragraph("Name: " + name));
                document.add(new Paragraph("Address: " + address));
                document.add(new Paragraph("Phone: " + phone));
                document.add(new Paragraph("Destination: " + destination));
                
                //generate bill
                double bill = 0.0;
                
                switch (destination.toLowerCase()) {
	                case "ampara": {
	                    bill = 12000.00;
	                    break;
	                }
	                case "anuradhapura": {
	                    bill = 15000.00;
	                    break;
	                }
	                case "badulla": {
	                    bill = 14000.00;
	                    break;
	                }
	                case "batticaloa": {
	                    bill = 13000.00;
	                    break;
	                }
	                case "colombo": {
	                    bill = 8000.00;
	                    break;
	                }
	                case "galle": {
	                    bill = 9000.00;
	                    break;
	                }
	                case "gampaha": {
	                    bill = 7000.00;
	                    break;
	                }
	                case "hambantota": {
	                    bill = 11000.00;
	                    break;
	                }
	                case "jaffna": {
	                    bill = 16000.00;
	                    break;
	                }
	                case "kalutara": {
	                    bill = 8500.00;
	                    break;
	                }
	                case "kandy": {
	                    bill = 9500.00;
	                    break;
	                }
	                case "kegalle": {
	                    bill = 9000.00;
	                    break;
	                }
	                case "kilinochchi": {
	                    bill = 15500.00;
	                    break;
	                }
	                case "kurunegala": {
	                    bill = 10000.00;
	                    break;
	                }
	                case "mannar": {
	                    bill = 14500.00;
	                    break;
	                }
	                case "matale": {
	                    bill = 9500.00;
	                    break;
	                }
	                case "matara": {
	                    bill = 10000.00;
	                    break;
	                }
	                case "monaragala": {
	                    bill = 12500.00;
	                    break;
	                }
	                case "mullaitivu": {
	                    bill = 16000.00;
	                    break;
	                }
	                case "nuwara eliya": {
	                    bill = 12000.00;
	                    break;
	                }
	                case "polonnaruwa": {
	                    bill = 14000.00;
	                    break;
	                }
	                case "puttalam": {
	                    bill = 11500.00;
	                    break;
	                }
	                case "ratnapura": {
	                    bill = 10500.00;
	                    break;
	                }
	                case "trincomalee": {
	                    bill = 15000.00;
	                    break;
	                }
	                case "vavuniya": {
	                    bill = 14500.00;
	                    break;
	                }
	                default: {
	                    bill = 0.00; // Default case if the destination is not recognized
	                    break;
	                }
	            }

                
                document.add(new Paragraph("_____________"));
                document.add(new Paragraph("Total = Rs." + bill + "0/="));
                document.add(new Paragraph("_____________"));
                document.add(new Paragraph(" "));
                document.add(new Paragraph("Thank you for booking with us!",
                        com.itextpdf.text.FontFactory.getFont(com.itextpdf.text.FontFactory.HELVETICA_OBLIQUE, 12)));

                document.close();
            } catch (DocumentException e) {
                e.printStackTrace();
            }

            // Add JavaScript to redirect to login.jsp after PDF download
            response.setContentType("text/html");
            response.getWriter().println("<script type=\"text/javascript\">");
            response.getWriter().println("alert('Your booking is successful. The invoice has been downloaded.');");
            response.getWriter().println("window.location.href = 'login.jsp';");
            response.getWriter().println("</script>");
        } else {
            // Redirect to unsuccessful page
            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);
        }
    }
}
