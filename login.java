package studentmanagement;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection conn ;
    PreparedStatement pst ;
    ResultSet result ;
    /**
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/studentmanagement";
            String username = "root";
            String password = "Amose@123";
            conn = DriverManager.getConnection(url, username, password);

            String userParam = request.getParameter("username");
            String passParam = request.getParameter("password");

            if (userParam != null && passParam != null) {
                pst = conn.prepareStatement("select * from student where name = ? and password = ?");
                pst.setString(1, userParam);
                pst.setString(2, passParam);
                result = pst.executeQuery();

                if (result.next()) {
                    //res.getWriter().print("Login successful!");
                	request.getRequestDispatcher("welcome.jsp").forward(request, response);
                } else {
                    response.getWriter().print("Invalid username or password.");
                }
            }
	

}

	catch (Exception e) {
        e.printStackTrace();
    }
}
         
	}

	

