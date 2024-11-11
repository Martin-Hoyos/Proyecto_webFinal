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
import javax.servlet.annotation.WebServlet;

@WebServlet("/registrar")
public class registrar extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String DB_URL = "jdbc:mysql://ueaxccosiwgfnuo5:J9d5wTPIyWsgRyXmEJfd@bew3kbjtj9n5faq31kla-mysql.services.clever-cloud.com:3306/bew3kbjtj9n5faq31kla";
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String nombre = request.getParameter("nombre");
	    String contrasenia = request.getParameter("password");
	    String email = request.getParameter("correo");
	    String telefono = request.getParameter("telefono");
	     
	    try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DB_URL, "ueaxccosiwgfnuo5@91.208.207.21", "J9d5wTPIyWsgRyXmEJfd");

			// Verificar si el correo ya existe
			String checkEmailSql = "SELECT * FROM usuario WHERE email = ?";
			PreparedStatement checkEmailStmt = conn.prepareStatement(checkEmailSql);
			checkEmailStmt.setString(1, email);
			ResultSet rs = checkEmailStmt.executeQuery();

			if (rs.next()) {
				// Si existe, mostrar mensaje de error
				request.setAttribute("error", "El correo ya está registrado. Intente con otro.");
				RequestDispatcher dispatcher = request.getRequestDispatcher("registrar.jsp");
				dispatcher.forward(request, response);
			} else {
				// Si no existe, insertar el nuevo usuario
				String sql = "INSERT INTO usuario (id_u, nombre, email, contrasenia, telefono) VALUES (FLOOR(1000 + RAND() * 9000), ?, ?, ?, ?)";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setString(1, nombre);
				stmt.setString(2, email);
				stmt.setString(3, contrasenia);
				stmt.setString(4, telefono);

				int rowsInserted = stmt.executeUpdate();

				if (rowsInserted > 0) {
					response.sendRedirect("iniciosesion.jsp");
				} else {
					request.setAttribute("error", "Error: No se pudo registrar el usuario.");
					RequestDispatcher dispatcher = request.getRequestDispatcher("registrar.jsp");
					dispatcher.forward(request, response);
				}
				stmt.close();
			}

			rs.close();
			checkEmailStmt.close();
			conn.close();

		} catch (SQLException e) {
			request.setAttribute("error", "Error en la base de datos: " + e.getMessage());
			RequestDispatcher dispatcher = request.getRequestDispatcher("registrar.jsp");
			dispatcher.forward(request, response);
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			request.setAttribute("error", "Error: Driver de MySQL no encontrado.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("registrar.jsp");
			dispatcher.forward(request, response);
			e.printStackTrace();
		}
	}
}



