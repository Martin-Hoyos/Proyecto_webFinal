package voluntarios;

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

@WebServlet("/voluntarios_for")
public class voluntarios_for extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String DB_URL = "jdbc:mysql://ueaxccosiwgfnuo5:J9d5wTPIyWsgRyXmEJfd@bew3kbjtj9n5faq31kla-mysql.services.clever-cloud.com:3306/bew3kbjtj9n5faq31kla";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        String especializacion = request.getParameter("especializacion");
        String provincia = request.getParameter("provincia");
        String disponibilidadOnline = request.getParameter("disponibilidad"); 
        String ayuda = request.getParameter("comentarios");

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, "ueaxccosiwgfnuo5", "J9d5wTPIyWsgRyXmEJfd");
            
            String sql = "INSERT INTO voluntarios (id_v, nombre, email, telefono, especializacion, provincia, disponibilidad_online, ayuda) " +
                         "VALUES (FLOOR(1000 + RAND() * 9000), ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setString(1, nombre);
            stmt.setString(2, email);
            stmt.setString(3, telefono);
            stmt.setString(4, especializacion);
            stmt.setString(5, provincia);
            stmt.setString(6, disponibilidadOnline);
            stmt.setString(7, ayuda);

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
                out.println("<h2>¡Gracias por contribuir a la causa!</h2>");
                out.println("<p>Tu solicitud se ha enviado correctamente.</p>");
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
                RequestDispatcher dispatcher = request.getRequestDispatcher("formpros.jsp");
                dispatcher.forward(request, response);
            }

            stmt.close();
            conn.close();

        } catch (SQLException e) {
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

