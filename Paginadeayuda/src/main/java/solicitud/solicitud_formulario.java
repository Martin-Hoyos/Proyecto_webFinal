package solicitud;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/enviar_solicitud")
public class solicitud_formulario extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String DB_URL = "mysql://ueaxccosiwgfnuo5:J9d5wTPIyWsgRyXmEJfd@bew3kbjtj9n5faq31kla-mysql.services.clever-cloud.com:3306/bew3kbjtj9n5faq31klas"; 
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        String direccion = request.getParameter("direccion");
        String reside = request.getParameter("reside");
        String descripcionDanos = request.getParameter("descripcion_danos");
        //StringBuilder descrpcionDanos = new StringBuilder();
        

        // Concatenar las necesidades específicas de ayuda
        StringBuilder ayudaEspecifica = new StringBuilder();
        if (request.getParameter("alojamiento") != null) ayudaEspecifica.append("Alojamiento temporal, ");
        if (request.getParameter("asistencia_economica") != null) ayudaEspecifica.append("Asistencia económica, ");
        if (request.getParameter("reparacion_vivienda") != null) ayudaEspecifica.append("Reparación de vivienda, ");
        if (request.getParameter("asistencia_alimentaria") != null) ayudaEspecifica.append("Asistencia alimentaria, ");
        if (request.getParameter("productos_higiene") != null) ayudaEspecifica.append("Productos de higiene personal, ");
        if (request.getParameter("medicamentos") != null) ayudaEspecifica.append("Medicamentos");

        try {
            // Cargar el driver de MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, "ueaxccosiwgfnuo5", "J9d5wTPIyWsgRyXmEJfd"); 
            
           
            String sql = "INSERT INTO solicitud (id_solicitud, nombre, telefono, email, direccion, reside, descripcion, ayuda_especifica) " +
                         "VALUES (FLOOR(1000 + RAND() * 9000), ?, ?, ?, ?, ?, ?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            
           
            stmt.setString(1, nombre);
            stmt.setString(2, telefono);
            stmt.setString(3, email);
            stmt.setString(4, direccion);
            stmt.setString(5, reside);
            stmt.setString(6, descripcionDanos);
            stmt.setString(7, ayudaEspecifica.toString());

            int rowsInserted = stmt.executeUpdate();
            
            if (rowsInserted > 0) {
            	response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Confirmación</title>");
                out.println("<style>");
                out.println("body { font-family: Arial, sans-serif; background-color: #f0f0f0; text-align: center; padding: 50px; }");
                out.println(".mensaje { background-color: #4CAF50; color: white; padding: 20px; border-radius: 10px; margin: 20px auto; width: 60%; font-size: 18px; }");
                out.println(".boton { padding: 10px 20px; background-color: #008CBA; color: white; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; }");
                out.println(".boton:hover { background-color: #005f6b; }");
                out.println("</style>");
                out.println("</head>");
                out.println("<body>");
                out.println("<div class='mensaje'>");
                out.println("<h2>¡Gracias por tu solicitud!</h2>");
                out.println("<p>Tu solicitud ha sido enviada correctamente.</p>");
                out.println("<p>Serás redirigido a la página principal en breve. Si no lo haces automáticamente, haz clic en el botón de abajo.</p>");
                out.println("</div>");
                out.println("<a href='Index.jsp'><button class='boton'>Ir a la Página Principal</button></a>");
                out.println("<script>");
                out.println("setTimeout(function() { window.location.href = 'Index.jsp'; }, 5000);");
                out.println("</script>");
                out.println("</body>");
                out.println("</html>");
            } else {
                request.setAttribute("error", "No se pudo enviar la solicitud.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("ayudas.jsp");
                dispatcher.forward(request, response);
            }
            
            stmt.close();
            conn.close();

        } catch (SQLException e) {
            // Manejo de errores de SQL
            request.setAttribute("error", "Error en la base de datos: " + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("ayudas.jsp");
            dispatcher.forward(request, response);
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // Manejo de error si no se encuentra el driver de MySQL
            request.setAttribute("error", "Driver de MySQL no encontrado.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("ayudas.jsp");
            dispatcher.forward(request, response);
            e.printStackTrace();
        }
    }
}
