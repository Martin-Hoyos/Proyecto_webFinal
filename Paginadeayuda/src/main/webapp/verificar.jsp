<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>El poble</title>
    <link rel="shortcut icon" href="IMG/ElPOBLE.png">
    <link rel="stylesheet" href="piko.css">
</head>
<body>
    <header id="encabezado">
        <br><br>
        <div class="logo">
            <img src="IMG/ElPOBLE_texto.png" alt="logo_hease" height="150px" width="250px">
        </div>
        <h1>Apoyo para los Afectados por la DANA</h1>
        
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

    <section id="Donativos">
        <h2>Donativos</h2>
        <p>Cuando queremos colaborar lo más importante es asegurarnos que lo que donamos sea recibido por los afectados. A veces personas aprovechan estos momentos para sacar tajada. Nosotros queremos asegurarnos de que esto no sea el caso y las donaciones lleguen a las personas que lo necesitan, por eso intentamos buscar las mejores opciones.</p>
    </section>

    <section id="como-ayudar">
        <a href="verificar.jsp" id="link_titulo">
            <h2>Cómo Puedes Ayudar</h2>
        </a>
        <p>Hay muchas formas de apoyar, desde donaciones a grupos que se encarguen de llevar suministros hasta voluntariado en las zonas afectadas.</p>

        <div class="contenedor-principal">
            <div class="contenedor-ong">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Logotipo_oficial_-_Federación_Española_de_Bancos_de_Alimentos.png/320px-Logotipo_oficial_-_Federación_Española_de_Bancos_de_Alimentos.png" alt="Logo ONG 1" class="imagen-ong">
                <div class="info-ong">
                    <h3>Federación Española de Bancos de Alimentos</h3>
                    <h4><a href="https://www.fesbal.org.es" target="_blank">https://www.fesbal.org.es</a></h4>
                    <p>917 356 390</p>
                </div>
            </div>
            
            <div class="contenedor-ong">
                <img src="https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-original-577x577/s3/012013/untitled-1_105.png?itok=0pKjLhXZ" alt="Logo ONG 2" class="imagen-ong">
                <div class="info-ong">
                    <h3>Accion contra el hambre</h3>
                    <h4><a href="https://accioncontraelhambre.org/es" target="_blank">https://accioncontraelhambre.org/es</a></h4>
                    <p>900 100 822</p>
                </div>
            </div>  
        
            <div class="contenedor-ong">
                <img src="https://cdn.humanitycrew.org/wp-content/uploads/2021/01/Open-Arms-Logo.png" alt="Logo ONG 3" class="imagen-ong">
                <div class="info-ong">
                    <h3>Open Arms</h3>
                    <h4><a href="https://www.oxfamintermon.org/es/" target="_blank">https://www.openarms.es/emergenciavalencia/</a></h4>
                    <p>931282830</p>
                </div>
            </div>   
            
            <div class="contenedor-ong">
                <img src="https://www.propeller.la/thumbs/800/files/wonly/oxfam_logo_vertical_green_rgb_93533.png" alt="Logo ONG 4" class="imagen-ong">
                <div class="info-ong">
                    <h3>Oxfam</h3>
                    <h4><a href="https://th.bing.com/th/id/OIP.EAQ2xIfh3L-CCcYu0DSlPwHaIO?rs=1&pid=ImgDetMain" target="_blank">https://www.oxfamintermon.org/es/</a></h4>
                    <p>900 22 33 00</p>
                </div>
            </div>
        </div>
    </section>

    <footer id="contacto">
        <h2 id="pie">Contacto</h2>
        <p>Email: danmificadosvalencia@gmail.com</p>
        <br>
        <h2 id="pie">Colaboradores</h2>
        <p>Nickelson Santander, Alejandro Paz, Pablo Cuesta, Manuel Pombo, Juan Hoyos, Ivan Moreno, Iago Ocaña, Lucas Sanchez, Jaime Aguela, Ricardo Ricota, Marcos de Andres, Kerry Cabellero </p>
    </footer>
</body>
</html>
