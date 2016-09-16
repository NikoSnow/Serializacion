<%-- 
    Document   : prestamos
    Created on : 16/09/2016, 09:56:17 AM
    Author     :Nicolas
--%>

<%@page import="dato.Activo"%>
<%@page import="servicios.BD"%>
<%@page import="servicios.Servicios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Servicios servicio = new Servicios();
    BD datos = servicio.leer();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Prestamos</h1>

        <form action="ServletP" method="POST">
            <label>Activos</label>
            <select name="activo" form="">
                <%
                    for (Activo activo : datos.getActivos()) {
                %>
                <option value="<%=activo.getNombre()%>">
                    <%=activo.getNombre()%>
                </option>
                <%
                    }
                %>
            </select>

            </label>Cantidad</label>
            <input type="text" name="cantidad"/>
            <input type="submit"/>
        </form>

    </body>
</html>
