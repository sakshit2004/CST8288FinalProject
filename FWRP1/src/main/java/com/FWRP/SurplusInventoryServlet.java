package com.FWRP;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/surplus_inventory")
public class SurplusInventoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward to the surplus_inventory.jsp page
        request.getRequestDispatcher("/surplus_inventory.jsp").forward(request, response);
    }
}