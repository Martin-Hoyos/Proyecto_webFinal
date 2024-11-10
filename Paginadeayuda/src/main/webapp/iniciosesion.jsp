<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>El poble</title>
    <link rel="shortcut icon" href="IMG/ElPOBLE.png">
<link rel="stylesheet" href="login.css">

</head>

<body> 
    <header>

        <A href="Index.jsp" id="cabeza">No hacer login</A>
    </header>
   
    <div class="basurero">
        <div class="form-group"> 
            <h1>Iniciar Sesion</h1><br><br>

            <% if (request.getAttribute("error") != null) { %>
                <div class="error"><%= request.getAttribute("error") %></div>
            <% } %>
            <form action="validar" method="post">
            <input type="text" id="correo" class="form-control" name="correo" placeholder="correo electronico">
            <input type="password" id="password" class="form-control" name="password" placeholder="contraseña">
            <br><br>
            <button id="boton" class="boton" ">Iniciar sesion</button><br><br>
            </form>
            <a href="registrar.jsp">Registrarse</a>
            
        </div>

    </div>
    
    
</body>
</html>