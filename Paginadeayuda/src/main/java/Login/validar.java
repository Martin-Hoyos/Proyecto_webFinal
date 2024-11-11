package Login;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/validar")
public class validar extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	private static final String DB_URL = "jdbc:mysql://bew3kbjtj9n5faq31kla-mysql.services.clever-cloud.com:3306/bew3kbjtj9n5faq31kla";
	
	private static final String DB_URL = "jdbc:mysql://ueaxccosiwgfnuo5:J9d5wTPIyWsgRyXmEJfd@bew3kbjtj9n5faq31kla-mysql.services.clever-cloud.com:3306/bew3kbjtj9n5faq31kla";
	
	//mysql://ueaxccosiwgfnuo5:J9d5wTPIyWsgRyXmEJfd@bew3kbjtj9n5faq31kla-mysql.services.clever-cloud.com:3306/bew3kbjtj9n5faq31kla


	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String nombre = request.getParameter("correo");
	        String contrasenia = request.getParameter("password");

	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");

	            Connection conn = DriverManager.getConnection(DB_URL, "ueaxccosiwgfnuo5", "J9d5wTPIyWsgRyXmEJfd");
	            
	            String sql = "SELECT * FROM usuario WHERE nombre = ? AND contrasenia = ?";
	            PreparedStatement stmt = conn.prepareStatement(sql);
	            stmt.setString(1, nombre);
	            stmt.setString(2, contrasenia);
	            ResultSet rs = stmt.executeQuery();

	            if (rs.next()) {
	            	response.sendRedirect("Index.jsp");
	            } else {
	            	request.setAttribute("error", "Correo o contraseña incorrectos."); 
		            RequestDispatcher dispatcher = request.getRequestDispatcher("iniciosesion.jsp");
		            dispatcher.forward(request, response); 
	            }

	            rs.close();
	            stmt.close();
	            conn.close();

	        } catch (SQLException e) {
	            response.getWriter().println("Error en la base de datos: " + e.getMessage());
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    }
	}

	

