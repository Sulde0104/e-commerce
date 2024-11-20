package org.example.ecommerce;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phoneNumber = request.getParameter("phone_number");


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-commerce", "root", "727396980510")) {
                String sql = "INSERT INTO users (name, email, password, phone_number) VALUES (?, ?, ?, ?)";
                try (PreparedStatement ps = conn.prepareStatement(sql)) {
                    ps.setString(1, username);
                    ps.setString(2, email);
                    ps.setString(3, password);
                    ps.setString(4, phoneNumber);
                    ps.executeUpdate();
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Handle error: JDBC Driver not found
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle SQL error
        }


        try {
            response.sendRedirect("signUp.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
