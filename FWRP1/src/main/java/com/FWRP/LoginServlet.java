/*
 * 
 */
package com.FWRP;

import jakarta.servlet.RequestDispatcher; 
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * The Class LoginServlet.
 */
@WebServlet("/LoginForm")
public class LoginServlet extends HttpServlet{
	
	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;
   
	/**
	 * Do post.
	 *
	 * @param req the req
	 * @param resp the resp
	 * @throws ServletException the servlet exception
	 * @throws IOException Signals that an I/O exception has occurred.
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
	resp.setContentType("text/html");
	
	 PrintWriter out =  resp.getWriter();
	 String myemail = req.getParameter("email1");
	 String mypass = req.getParameter("pass1");	
		 	
		try {
			
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fwrp","root","Sakshit@420");

			PreparedStatement ps = con.prepareStatement("SELECT * FROM register WHERE email=? AND password=?");
			ps.setString(1, myemail);
			ps.setString(2, mypass);
						
			ResultSet rs = ps.executeQuery();
			if(rs.next()) 
			{
				HttpSession session = req.getSession();
                session.setAttribute("session_name", rs.getString("name"));
                // Redirect based on user type
                String userType = rs.getString("type");
                System.out.println("User type: " + userType);

                
                switch (userType) {
                    case "Retailers":
                        resp.sendRedirect("RetailerFirst.jsp");
                        break;
                    case "Charitable Organization":
                        resp.sendRedirect("CharitableFirst.jsp");
                        break;
                    case "Consumers":
                        resp.sendRedirect("ConsumerFirst.jsp");
                        break;
                    default:
                        // If user type is not recognized, redirect to a default page
                        resp.sendRedirect("ConsumerFirst.jsp");
                        break;
			}
                
			}
			else
			{
				HttpSession session = req.getSession();
				session.setAttribute("errorMessage", "<<div style='text-align:center'><h3 style='color:red'> Email id and Password didnot match </h3>");
				
				// Redirect back to login page
				resp.sendRedirect("login.jsp");

		}	
			
	}

		catch(Exception e ) 
		{
			
			e.printStackTrace();
			
			out.print("<h3 style='color:red'> "+e.getMessage()+" </h3>");

			RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
		    rd.include(req, resp);

		}
	}

}