package com.FWRP;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;



@WebServlet("/DonationServlet")
public class DonationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        PrintWriter out = response.getWriter();

    	String retailerName = request.getParameter("retailerName");
    	String retailerEmail = request.getParameter("retailerEmail");
    	String retailerContact = request.getParameter("retailerContact");
    	String retailerAddress = request.getParameter("retailerAddress");
    	int itemId = Integer.parseInt(request.getParameter("itemId"));
    	LocalDate donationDate = LocalDate.parse(request.getParameter("donationDate"));
    	int donationQuantity = Integer.parseInt(request.getParameter("donationQuantity"));
    	String donationDescription = request.getParameter("donationDescription");


    	
//        String foodItemId = request.getParameter("foodItemId");
//        int retailerId = Integer.parseInt(request.getParameter("retailerId"));

       
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fwrp", "root", "Sakshit@420");
            
            
            PreparedStatement ps = con.prepareStatement(
            	    "INSERT INTO donations (retailer_name, retailer_email, retailer_contact, retailer_address, item_id, donation_date, donation_quantity, donation_description) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

            	ps.setString(1, retailerName);
            	ps.setString(2, retailerEmail);
            	ps.setString(3, retailerContact);
            	ps.setString(4, retailerAddress);
            	ps.setInt(5, itemId);  
            	ps.setDate(6, java.sql.Date.valueOf(donationDate));  
            	ps.setInt(7, donationQuantity);
            	ps.setString(8, donationDescription);
            	
            	
            int rowsUpdated = ps.executeUpdate();
            if (rowsUpdated > 0) {
                response.getWriter().println("Food item claimed successfully!");
                
            } else {
                response.getWriter().println("Failed to claim food item.");
            }
        }catch (ClassNotFoundException | SQLException e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

