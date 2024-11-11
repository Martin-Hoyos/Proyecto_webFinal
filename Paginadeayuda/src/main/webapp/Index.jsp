<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>El poble</title>
    <link rel="shortcut icon" href="IMG/ElPOBLE.png">
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <header id="encabezado">
        <br><br>
        <div class="logo"><img src="IMG/ElPOBLE_texto.png" alt="logo_hease" height="150px" width="250px"></div>
        <h1>Apoyo para los Afectados por la DANA</h1>
        <p>By: Grado superior DAM teide IV</p>
        <nav id="navegacion">
            <ul>
               
                <li><a href="ayudas.jsp">¿Necesitas ayuda?</a></li>
                <li><a href="profesionales2.jsp">Profesionales</a></li>
                <li><a href="puntosayuda.jsp">Puntos de Ayuda</a></li>
                <li><a href="iniciosesion.jsp">Iniciar Sesion</a></li>
  	          </ul>
        </nav>
    </header>
    

    <section id="quienes-somos">
        <h2>Quiénes Somos</h2>
        <p>Somos un Grupo de estudiantes sin ánimo de lucro dedicados a apoyar a las comunidades afectadas por la DANA en diferentes regiones.</p>
    </section>
    
    
<section id="ver_soli">
    <form action="mostrar_solicitud" method="get">
        <button id="btn_ver_solicitudes" type="submit" >
            <h2>Ver Solicitudes de Ayuda</h2>
            <p>En esta página, puedes consultar todas las solicitudes de ayuda enviadas por personas afectadas por la DANA. Aquí, se registran las necesidades específicas de cada solicitud, permitiendo a los voluntarios y organizaciones brindar apoyo en las áreas afectadas.</p>
            <p>Revisa cada solicitud para entender mejor las necesidades de los afectados y encontrar formas de contribuir a su recuperación.</p>
        </button>
    </form>
</section>


    <section id="compartir_coche">
        <a href="https://anem.guruwalk.com/" id="link_titulo"><h2>IR A VALENCIA COMPARTIENDO VIAJE</h2></a>
        <p>Un espacio creado para coordinar y facilitar el transporte de voluntarios y ayuda a las zonas afectadas. Aquí puedes encontrar personas con quienes compartir tu trayecto, ya sea para aportar ayuda en labores de recuperación, llevar suministros, o colaborar en el apoyo a quienes más lo necesitan.</p>
        <p>Agradecemos especialmente a GuruWalk por inspirarnos a construir esta red solidaria, donde el viaje no es solo un destino, sino una misión de apoyo y reconstrucción. ¡Gracias por ayudarnos a hacer posible esta iniciativa y por motivarnos a unir esfuerzos por Valencia!</p>
        <!--Aqui pondremos el apartado donde daremos link a ongs que se sepa que realmente estan cumpliendo con colaborar-->
    </section>

    <section id="como-ayudar">
        <a href="verificar.jsp" id="link_titulo"><h2>Cómo Puedes Ayudar</h2></a>
        <p>Hay muchas formas de apoyar, desde donaciones a grupos que se encarguen de llevar suministros hasta voluntariado en las zonas afectadas.</p>
        <!--Aqui pondremos el apartado donde daremos link a ongs que se sepa que realmente estan cumpliendo con colaborar-->
    </section>

        <!--Aqui pondremos el apartado donde va el contacto de empresas que de descuentos o esten cercanas a estos sitios afectados-->
    </section>
    
    <section id="encontrar_coche">
        <a href="https://www.tucochedana.es" id="link_titulo"><h2>ENCONTRAR TU COCHE</h2></a>
        <p>Esta página es una herramienta para ayudar a las personas afectadas por la DANA a encontrar sus coches perdidos. Aquí puedes buscar y consultar información sobre coches localizados en las áreas afectadas. Si encuentras un coche, puedes contribuir registrándolo, indicando su ubicación para facilitar que su dueño lo recupere.</p>
        <p>La página ha sido creada por René, estudiante de la UPV, y Juanfran, profesor de programación. Juntos han diseñado esta plataforma para que cualquier persona pueda ayudar a registrar coches en las zonas afectadas y, a su vez, facilitar a los propietarios encontrar sus vehículos extraviados.</p>
    </section>
    
    
    <footer id="contacto">
        <h2 id="pie">Contacto</h2>
        <p>Email: danmificadosvalencia@gmail.com</p>

        <br>
        <h2 id="pie">Colaboradores</h2>
        <p>Nickelson Santander, Alejandro Paz, Pablo Cuesta, Manuel Pombo, Juan Hoyos, Ivan Moreno, Iago Ocaña, 
            Lucas Sanchez, Jaime Aguela, Ricardo Ricota, Marcos de Andres, Kerry Cabellero </p>
    </footer>                                                                                                                                                                                                                
</body>
 
</html>