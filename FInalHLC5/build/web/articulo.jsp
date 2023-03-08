<%-- 
    Document   : articulo
    Created on : Mar 4, 2023, 3:38:49 PM
    Author     : gandalfvaro
--%>

<%@page import="dao.MensajeDaoImplement"%>
<%@page import="model.Mensaje"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Articulo</title>
         <link rel="stylesheet" href="estilos/index.css">
         <link rel="stylesheet" href="estilos/articulo.css">
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
        <% } else {%>
        <header>
            <h1>Práctica HLC 5</h1>
            <form method="post" action="LogOut">
                <input type="submit" value="Salir" />
            </form>
            <form method="post" action="principal.jsp">
                <input type="submit" value="Atras" />
            </form>
        </header>
        <%
            int id = Integer.parseInt(session.getAttribute("id").toString());
            ArrayList<Mensaje> mensajes = new MensajeDaoImplement().getMensajesUsuario(id);
            for (Mensaje men : mensajes) {
                Mensaje mensaje = men;

        %>
        <section>
            <article>
                    <h4><b><%= mensaje.getAsunto() %></b></h4>
                    <form method="post" action="detalle.jsp">
                        <input type="hidden" value="<%= mensaje.getNumero() %>" name="id" />
                        <input type="submit" class="btn btn-primary" value="Detalles">
                    </form>
                    <br>
            </article> 
        </section>
        <% } %>
        <footer><h1>José Manuel Fernández Vizcaíno</h1></footer>
        <% }%>
    </body>
</html>
