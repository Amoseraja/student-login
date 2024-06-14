package studentmanagement;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class signup
 */
@WebServlet("/signup")
public class signup extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database credentials
    String url = "jdbc:mysql://localhost:3306/studentmangement";
    String username = "root";
    String password = "Amose@123";
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward request to the signup form JSP page
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            // Load the MySQL driver
        	 Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            conn = DriverManager.getConnection(url, username, password);

            // Get parameters from request
            String idParam = request.getParameter("studentId");
            String userParam = request.getParameter("username");
            String passParam = request.getParameter("password");

            // Check if studentId already exists
            String checkSql = "SELECT COUNT(*) FROM student WHERE studentId = ?";
            pst = conn.prepareStatement(checkSql);
            pst.setString(1, idParam);
            rs = pst.executeQuery();
            rs.next();

            if (rs.getInt(1) > 0) {
                // studentId already exists
                response.getWriter().print("Student ID already exists. Please use a different ID.");
            } else {
                // Insert into database
                 pst = conn.prepareStatement( "INSERT INTO student (?, ?, ?)");
               
                pst.setString(1, idParam);
                pst.setString(2, userParam);
                pst.setString(3, passParam);

                int result = pst.executeUpdate();

                if (result > 0) {
                    // Successful signup, redirect to welcome page
                    response.sendRedirect("welcome.jsp");
                } else {
                    // Failed signup
                    response.getWriter().print("Failed to sign up. Please try again.");
                }
            }

       
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }

