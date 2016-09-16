<%-- 
    Document   : index.jsp
    Created on : 15/09/2016, 10:04:13 PM
    Author     : Isabel-Fabian
--%>

<%@page import="servicios.Servicios"%>
<%@page import="dato.Activo"%>
<%@page import="servicios.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
   Servicios servicio = new Servicios();
   BD bd = servicio.leer();  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Activos</h1>
        <%
           if(request.getAttribute("Mensaje") != null){
        %>
            <h1>Mensajes Error: <%=(String)request.getAttribute("Mensaje")%></h1> 
         
        <% request.removeAttribute("Mensaje"); } %>
         <form action="Servlet" method="POST">
            Nombre <input type="text" name="activo"/>
            <input type="submit" />
        </form>
        
        <br/>
        <h1> Listado de Activos</h1>
        <%
           if(bd != null){
             for(Activo activo : bd.getActivos()){
        %>       
        <h2> <%=activo.getNombre()%> </h2><br/>
        <%  
             }
        }
        %>
    </body>
</html>
