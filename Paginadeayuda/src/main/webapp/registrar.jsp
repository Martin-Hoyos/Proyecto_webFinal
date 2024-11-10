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

        <A href="Index.jsp" id="cabeza">Volver Atras</A>
    </header>
      <% if (request.getAttribute("error") != null) { %>
            <div class="error"><%= request.getAttribute("error") %></div>
        <% } %>
   <form action="registrar" method="post" class="speaker-form">
    <div class="basurero">
        <div class="form-group">

            <label>Nombre y apellido: </label>
            <input name="nombre" type="text" placeholder="Sergio sanchez"><br><br>

            <label>Direccion de correo:</label>
            <input name='correo' type='text' placeholder='joe@example.com'/><br><br>

            <label >Telefono de Contacto</label>
            <input type="text" type="text" name="telefono" placeholder='643-123-456' >
            
            <br><br>

            <label>Ingrese una contraseña:</label>
            <input type="password" class="form-control" name="password" placeholder="contraseña">

            
            <br><br>
            
            <input type="submit" class="boton" value="enviar">
        </div>

    </div>
    </form>
    
    
    
</body>
</html>