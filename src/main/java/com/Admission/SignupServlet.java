package com.Admission;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection connection = DbConnection.getConnection()) {
            String sql = "INSERT INTO userlist (email, passwd) VALUES (?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, email);
                statement.setString(2, password);
                int rowsAffected = statement.executeUpdate();
                if(rowsAffected >= 1) {
                	System.out.println("User registered successfully!");
                    request.setAttribute("successMessage", "User registered successfully!");
                    
                    
                    }
                else {
                	System.out.println("No rows affected, operation failed");
                    request.setAttribute("errorMessage", "User registration failed!");
                }
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
            
        }
        //request.getRequestDispatcher("signup.jsp").forward(request, response);
        response.sendRedirect("login.jsp");
        
    }
}