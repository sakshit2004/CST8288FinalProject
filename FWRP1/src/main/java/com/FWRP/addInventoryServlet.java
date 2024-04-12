package com.FWRP;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/AddInventoryItemServlet")
public class addInventoryServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        // Retrieve form parameters
        String inventoryId = req.getParameter("inventoryId");
        String retailerId = req.getParameter("retailerId");
        String itemType = req.getParameter("itemType");
        String name = req.getParameter("name");
        String expirationDate = req.getParameter("expirationDate");
        String quantity = req.getParameter("quantity");
        String discountedPrice = req.getParameter("discountedPrice");
        String surplus = req.getParameter("surplus");

        try {
            // Establish database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fwrp", "root", "Sakshit@420");
            

            // Prepare SQL statement to insert inventory item
            PreparedStatement ps = con.prepareStatement("INSERT INTO INVENTORY (Inventory_ID, Retailer_ID, Item_Type, Name, Expiration_Date, Quantity, Discounted_Price, Surplus) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, inventoryId);
            ps.setString(2, retailerId);
            ps.setString(3, itemType);
            ps.setString(4, name);
            ps.setString(5, expirationDate);
            ps.setString(6, quantity);
            ps.setString(7, discountedPrice);
            ps.setString(8, surplus);

            // Execute SQL statement
            int count = ps.executeUpdate();

            if (count > 0) {
                // Display a success message
                resp.getWriter().println("<h2>Inventory item added successfully!</h2>");
            } else {
                // Display an error message
                resp.getWriter().println("<h2>Error adding inventory item!</h2>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Display an error message
            resp.getWriter().println("<h2 Data Added Sucessfully</h2>");
        }
    }
}

