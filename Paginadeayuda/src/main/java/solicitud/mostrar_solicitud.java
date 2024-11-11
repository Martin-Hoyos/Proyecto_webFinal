package solicitud;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mostrar_solicitud")
public class mostrar_solicitud extends HttpServlet {

    private static final long serialVersionUID = 1L;
	private static final String DB_URL = "jdbc:mysql://ueaxccosiwgfnuo5:J9d5wTPIyWsgRyXmEJfd@bew3kbjtj9n5faq31kla-mysql.services.clever-cloud.com:3306/bew3kbjtj9n5faq31kla";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Solicitud> solicitudes = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, "ueaxccosiwgfnuo5", "J9d5wTPIyWsgRyXmEJfd");
            
            String sql = "SELECT id_solicitud, nombre, telefono, email, direccion, reside, descripcion, ayuda_especifica FROM solicitud";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Solicitud solicitud = new Solicitud(
                    rs.getInt("id_solicitud"),
                    rs.getString("nombre"),
                    rs.getString("telefono"),
                    rs.getString("email"),
                    rs.getString("direccion"),
                    rs.getString("reside"),
                    rs.getString("descripcion"),
                    rs.getString("ayuda_especifica")
                );
                solicitudes.add(solicitud);
            }
            
            rs.close();
            stmt.close();
            conn.close();
            
            request.setAttribute("solicitudes", solicitudes);
            RequestDispatcher dispatcher = request.getRequestDispatcher("solicitudes.jsp");
            dispatcher.forward(request, response);
            
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            request.setAttribute("error", "Error al obtener las solicitudes: " + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
        }
    }
}
