<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>El poble</title>
    <link rel="shortcut icon" href="IMG/ElPOBLE.png">
    <link rel="stylesheet" href="ayudas.css">
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
    
    <section id="quienes-somos">
        EN ESTE APARTADO PODRÁS PEDIR AYUDA SI ERES UNO DE LOS AFECTADOS DE LA DANA.
        POR FAVOR, SI NO ERES UNO DE ELLOS NO RELLENES ESTE FORMULARIO.
    </section>

    <section id="como-ayudar">
        <form action="enviar_solicitud" method="POST">
            <!-- Datos Personales -->
            <h3>1. Datos Personales</h3>
            
            <label for="nombre">Nombre completo:</label><br>
            <input type="text" id="nombre" name="nombre" required><br><br>
            
            <label for="telefono">Teléfono de contacto:</label><br>
            <input type="tel" id="telefono" name="telefono" required><br><br>
            
            <label for="email">Correo electrónico:</label><br>
            <input type="email" id="email" name="email" required><br><br>
            
            <label for="direccion">Dirección afectada (Calle, Número, Ciudad, Código Postal):</label><br>
            <input type="text" id="direccion" name="direccion" required><br><br>
            
            <label>¿Reside actualmente en esta dirección?</label>
            <input type="radio" id="reside_si" name="reside" value="Si" required>
            <label for="reside_si">Sí</label>
            <input type="radio" id="reside_no" name="reside" value="No" required>
            <label for="reside_no">No</label><br><br>
            
            <!-- Descripción de la Situación -->
            <h3>2. Descripción de la Situación</h3>
            
            <label for="danos_estructurales">¿Cuál es la situación actual de la vivienda o propiedad afectada? (Seleccione todas las opciones que correspondan)</label><br>
            <div class="ayuda-item">
                <input type="checkbox" id="danos_estructurales" name="danos_estructurales" value="Daños estructurales">
                <label for="danos_estructurales">Daños estructurales</label>
            </div>
            <div class="ayuda-item">
                <input type="checkbox" id="inundacion" name="inundacion" value="Inundación de interiores">
                <label for="inundacion">Inundación de interiores</label>
            </div>
            <div class="ayuda-item">
                <input type="checkbox" id="perdida_mobiliario" name="perdida_mobiliario" value="Pérdida de mobiliario o pertenencias personales">
                <label for="perdida_mobiliario">Pérdida de mobiliario o pertenencias personales</label>
            </div>
            <div class="ayuda-item">
                <input type="checkbox" id="danos_instalaciones" name="danos_instalaciones" value="Daños en instalaciones básicas">
                <label for="danos_instalaciones">Daños en instalaciones básicas (electricidad, agua, gas)</label>
            </div>
            <div class="ayuda-item">
                <input type="checkbox" id="otro" name="situacion[]" value="Otro">
                <label for="otro">Otro (especifique):</label>
                <input type="text" id="otro_texto" name="otro_texto"><br><br>
            </div>

            <label for="descripcion_danos">Describa brevemente la situación y los daños sufridos:</label><br>
            <textarea id="descripcion_danos" name="descripcion_danos" rows="4" cols="50" ></textarea><br><br>
            
            <!-- Necesidades Específicas de Ayuda -->
            <h3>3. Necesidades Específicas de Ayuda</h3>
            <div class="ayuda-item">
                <input type="checkbox" id="alojamiento" name="alojamiento" value="Alojamiento temporal">
                <label for="alojamiento">Alojamiento temporal</label>
            </div>
            <div class="ayuda-item">
                <input type="checkbox" id="asistencia_economica" name="asistencia_economica" value="Asistencia económica">
                <label for="asistencia_economica">Asistencia económica</label>
            </div>
            <div class="ayuda-item">
                <input type="checkbox" id="reparacion_vivienda" name="reparacion_vivienda" value="Ayuda para la reparación de la vivienda">
                <label for="reparacion_vivienda">Ayuda para la reparación de la vivienda</label>
            </div>
            <div class="ayuda-item">
                <input type="checkbox" id="asistencia_alimentaria" name="asistencia_alimentaria" value="Asistencia alimentaria">
                <label for="asistencia_alimentaria">Asistencia alimentaria</label>
            </div>
            <div class="ayuda-item">
                <input type="checkbox" id="productos_higiene" name="productos_higiene" value="Productos de higiene personal">
                <label for="productos_higiene">Productos de higiene personal</label>
            </div>
            <div class="ayuda-item">
                <input type="checkbox" id="medicamentos" name="medicamentos" value="Medicamentos">
                <label for="medicamentos">Medicamentos</label>
            </div>

            <button type="submit">Enviar solicitud</button>
        </form>
    </section>

    <footer id="contacto">
        <h2 id="pie">Contacto</h2>
        <p>Email: danmificadosvalencia@gmail.com</p>
        <br>
        <h2 id="pie">Colaboradores</h2>
        <p>Nickelson Santander, Alejandro Paz, Pablo Cuesta, Manuel Pombo, Juan Hoyos, Ivan Moreno, 
            Iago Ocaña, Lucas Sanchez, Jaime Agueda, Ricardo Ricote, Marcos de Andres, Kerry Cabellero </p>
    </footer>
</body>
</html>
