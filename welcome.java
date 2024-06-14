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
 * Servlet implementation class welcome
 */
@WebServlet("/welcome")
public class welcome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection conn ;
    PreparedStatement pst ;
    ResultSet result ;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/studentmanagement";
            String username = "root";
            String password = "Amose@123";
            conn = DriverManager.getConnection(url, username, password);
            
		}

		catch (Exception e) {
	        e.printStackTrace();
	    }
	}

}
