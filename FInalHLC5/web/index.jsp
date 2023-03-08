<%-- 
    Document   : index
    Created on : 03-mar-2023, 15:10:37
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="estilos/index.css">
    </head>
    <body>
        <% session.setAttribute("conectado", false);%>
        <header><h1>Práctica HLC 5</h1></header>
        
        <h2>Github: JoseManuelFernandezVizcaino</h2>
        <h2>Gmail: jferviz308@g.educaand.es</h2>

        <form method="post" action="LogIn">
            Usuario:    <input type="text" name="user"></br>
            Contraseña: <input type="password" name="pass"</br>
            </br></br><input type="submit" value="Login">
        </form>
        
        <footer><h1>José Manuel Fernández Vizcaíno</h1></footer>
    </body>
</html>
