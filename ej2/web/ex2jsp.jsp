<%-- 
    Document   : ex2jsp
    Created on : 10-feb-2023, 20:53:05
    Author     : Manuel
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String[] parametros = {"Nombre", "correo electronico:", "dni"};%>
        <form action="ex2jsp.jsp" method="get">
            <table border=1 cellspacing=1 cellpadding=2>
                <% for (int i = 0; i < parametros.length; i++) {%>
                <tr>
                    <td><%=parametros[i]%></td>
                    <td><input type="text"
                               name= <%=parametros[i]%>>
                    </td>
                </tr>
                <% } %>
                <tr>
                    <td><input type="submit" value="Enviar"
                               size="2"></td>
                </tr>
            </table>
        </form>
        <hr>
        <table border=1 cellspacing=1 cellpadding=2>
            <%
                Enumeration enu = request.getParameterNames();
                while (enu.hasMoreElements()) {
                    String paramName = (String) enu.nextElement();
                    String paramValue = (String) request.getParameter(paramName);%>
            <tr>
                <td><%=paramName%></td>
                <td><%=paramValue%></td>
            </tr>
            <% }%>
        </table>
    </body>
</html>
