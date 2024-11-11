<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="solicitud.Solicitud" %> 
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="solicitudes_estilo.css">
    <title>Solicitudes Recibidas</title>
</head>
<body>
<header id="encabezado">
        <br><br>
        <div class="logo"><img src="IMG/ElPOBLE_texto.png" alt="logo_hease" height="150px" width="250px"></div>
        <h1>Apoyo para los Afectados por la DANA</h1>
        <p>By: Grado superior DAM teide IV</p>
        <nav id="navegacion">
            <ul>
                <li><a href="Index.jsp">Inicio</a></li>
                <li><a href="ayudas.jsp">¿Necesitas ayuda?</a></li>
                <li><a href="profesionales2.jsp">Profesionales</a></li>
                <li><a href="puntosayuda.jsp">Puntos de Ayuda</a></li>
                <li><a href="iniciosesion.jsp">Iniciar Sesion</a></li>
            </ul>
        </nav>
    </header>
    <h1>Solicitudes Recibidas</h1>

    <%
        // Recuperar el atributo "solicitudes" de la petición
        List<Solicitud> solicitudes = (List<Solicitud>) request.getAttribute("solicitudes");
        
        if (solicitudes != null && !solicitudes.isEmpty()) {
    %>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Teléfono</th>
                    <th>Email</th>
                    <th>Dirección</th>
                    <th>Reside</th>
                    <th>Descripción</th>
                    <th>Ayuda Específica</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Solicitud solicitud : solicitudes) {
                %>
                    <tr>
                        <td><%= solicitud.getId() %></td>
                        <td><%= solicitud.getNombre() %></td>
                        <td><%= solicitud.getTelefono() %></td>
                        <td><%= solicitud.getEmail() %></td>
                        <td><%= solicitud.getDireccion() %></td>
                        <td><%= solicitud.getReside() %></td>
                        <td><%= solicitud.getDescripcion() %></td>
                        <td><%= solicitud.getAyudaEspecifica() %></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    <%
        } else {
    %>
        <p>No se han encontrado solicitudes.</p>
    <%
        }
    %>
    
  
</body>
</html>

