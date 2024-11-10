<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Voluntariado</title>
    <link rel="stylesheet" href="formula.css">
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
    <div class="form-container">
       
        <br>
        <h1>Soy un profesional voluntario para los afectados.</h1>
        <p>Si eres profesional de algun rubro y estás dispuesto a brindar ayuda gratuita a los afectados por la dana de Valencia, rellena el formulario.</p>
        <form action="voluntarios_for" method="POST">
            <input type="text" name="nombre" placeholder="Nombre" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="tel" name="telefono" placeholder="Teléfono" required>
            <input type="text" name="especializacion" placeholder="Especialización" required>   
            <input type="text" name="provincia" placeholder="Provincia" required>
            <select name="disponibilidad" required>
                <option value="" disabled selected>Disponibilidad Online</option>
                <option value="si">Sí</option>
                <option value="no">No</option>
            </select>
            <textarea name="comentarios" placeholder="Como puedes ayudar, cuentanos un poco."></textarea>
            <label>
                <input type="checkbox" name="privacidad" required> Acepto la Política de Privacidad
            </label>
            <button type="submit">Brindar Ayuda Gratuita</button>
        </form>
    </div>
</body>
</html>
