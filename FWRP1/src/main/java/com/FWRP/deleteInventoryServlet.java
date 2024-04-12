package com.FWRP;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.io.IOException;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/delete_inventory")
public class deleteInventoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the request parameters
        int inventoryId = Integer.parseInt(request.getParameter("inventoryId"));
        int retailerId = Integer.parseInt(request.getParameter("retailerId"));
        String itemType = request.getParameter("itemType");
        String name = request.getParameter("name");
        String expirationDate = request.getParameter("expirationDate");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double discountedPrice = Double.parseDouble(request.getParameter("discountedPrice"));
        boolean surplus = Boolean.parseBoolean(request.getParameter("surplus"));

        inventoryDAO inventoryDAO = new inventoryDaoImpl();
        // Create a new Inventory object with the updated values
        inventory inventory = new inventory(inventoryId, retailerId, itemType, name, expirationDate, quantity, discountedPrice, surplus);

        inventoryDAO.deleteInventory( inventoryId);
		response.sendRedirect("inventory.jsp");
    }
}