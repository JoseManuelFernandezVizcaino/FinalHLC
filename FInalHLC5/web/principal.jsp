<%-- 
    Document   : principal
    Created on : 03-mar-2023, 15:57:02
    Author     : alumno
--%>

<%@page import="dao.CuentaDaoImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="estilos/index.css">
         <link rel="stylesheet" href="estilos/principal.css">
    </head>
    <body>
        <% Boolean conectado = (Boolean) session.getAttribute("conectado");
            if (!conectado.booleanValue()) { %>
        <form method="post" id="casa" action='index.jsp'/>
        <script type="text/javascript">
            function formAutoSubmit() {
                var frm = document.getElementById("casa");
                frm.submit();
            }
            window.onload = formAutoSubmit;
        </script>
        <% } else { %>

        <header>
            <h1>Práctica HLC 5</h1>
            <form method="post" action="LogOut">
                <input type="submit" value="Salir" />
            </form>
        </header>

        <% int id = Integer.parseInt(session.getAttribute("id").toString());
            double recargo = new CuentaDaoImplement().getRecargo(id);%>
        
            <img src="fotos/<%= session.getAttribute("foto").toString() %>" />
        <h1>Bienvenid@ <%= session.getAttribute("nombre")%></h1>
        <button onclick='alert("<%= recargo%>")'>Ver recargos Pendientes</button>
        <form method="post" action="tabla.jsp">
            <input type="submit" value="Tabla" />
        </form>
        <form method="post" action="articulo.jsp">
            <input type="submit" value="Articulos" />
        </form>
        
        <footer> <h1>José Manuel Fernández Vizcaíno</h1></footer>

        <% }%>
    </body>
</html>
