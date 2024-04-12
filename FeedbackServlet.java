package com.FWRP;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SubmitFeedbackServlet")
public class FeedbackServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String personName = req.getParameter("personName");
        String email = req.getParameter("email");
        String itemId = req.getParameter("itemId");
        String feedback = req.getParameter("feedback");
        int rating = Integer.parseInt(req.getParameter("rating"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fwrp", "root", "Sakshit@420");

            PreparedStatement ps = con.prepareStatement("INSERT INTO feedback (person_name, email, item_id, feedback, rating) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, personName);
            ps.setString(2, email);
            ps.setString(3, itemId);
            ps.setString(4, feedback);
            ps.setInt(5, rating);

            int count = ps.executeUpdate();

            if (count > 0) {
                HttpSession session = req.getSession();
                session.setAttribute("successMessage", "Feedback Submitted Successfully");
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Feedback Form submitted successfully');");
                out.println("window.location.href='" + req.getContextPath() + "/FeedbackConsumer.jsp';");
                out.println("</script>");
                
            } else {
                resp.sendRedirect(req.getContextPath() + "/FeedbackConsumer.jsp");
                out.print("<h3 style='color:red'> Feedback not Submitted </h3>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            resp.setContentType("text/html");
            out.print("<h3 style='color:red'> Exception Occurred : " + e.getMessage() + "</h3>");
        }
    }
}
