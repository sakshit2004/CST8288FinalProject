package Consumers;

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

@WebServlet("/PurchaseServlet")
public class PurchaseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String itemName = request.getParameter("item_name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        double Disprice = Double.parseDouble(request.getParameter("discounted_rate"));
        double Dprice = Double.parseDouble(request.getParameter("discounted_price"));
        int Pamount = Integer.parseInt(request.getParameter("purchase_amount"));
        
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fwrp", "root", "Configuration579@");

            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO inventory ( item_name, quantity, price, discounted_rate, discounted_price, purchase_amount) VALUES (?, ?, ?, ?, ?, ?)");

            ps.setString(1, itemName);
            ps.setInt(2, quantity);
            ps.setDouble(3, price);
            ps.setDouble(4, Disprice);
            ps.setDouble(5, Dprice);
            ps.setInt(6, Pamount);

            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<h3>Purchase successful!</h3>");
            } else {
                out.println("<h3>Failed to process the purchase.</h3>");
            }

        } catch (ClassNotFoundException | SQLException e) {
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