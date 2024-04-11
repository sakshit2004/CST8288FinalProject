/*
 * 
 */
package com.FWRP;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * The Class RegisterServlet.
 */
@WebServlet("/RegistrationForm")
public class RegisterServlet extends HttpServlet {
    
    /**
     * Do post.
     *
     * @param req the req
     * @param resp the resp
     * @throws ServletException the servlet exception
     * @throws IOException Signals that an I/O exception has occurred.
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out = resp.getWriter();
        
        String myname = req.getParameter("name1");
        String myemail = req.getParameter("email1");
        String mypass = req.getParameter("pass1");
        String Type = req.getParameter("Type1");
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fwrp","root","Sakshit@420");
            
            PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?)");
            ps.setString(1, myname);
            ps.setString(2, myemail);
            ps.setString(3, mypass); // Corrected parameter index
            ps.setString(4, Type);   // Corrected parameter index
            
            int count = ps.executeUpdate();
            
            if (count > 0) {
                resp.setContentType("text/html");
                out.print("<h3 style='color:green'> User Registered Successfully </h3>");
                
                RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
                rd.include(req, resp);
            } else {
                resp.setContentType("text/html");
                out.print("<h3 style='color:red'> User not Registered </h3>");
                
                RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
                rd.include(req, resp);
                
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
            
            resp.setContentType("text/html");
            out.print("<h3 style='color:red'> Exception Occurred : " + e.getMessage() + "</h3>");
            
            RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
            rd.include(req, resp);
        }
    }
}