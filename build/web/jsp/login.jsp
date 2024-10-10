<%-- 
    Document   : login
    Created on : 8 oct 2024, 19:38:31
    Author     : Carlos Eugenio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Iniciar Sesión</h1>
        
        <form action="${pageContext.request.contextPath}/login_servlet" method="post">
            
            <label for="matricula"> Matricula </label>
            <input type="text" id="matricula" name="matricula" required> <br>
            
            <label for="password"> Contraseña </label>
            <input type="password" id="password" name="password" required> <br>
            
            <button type="submit"> Iniciar Sesión </button>
            
        </form>
        
        <!-- Manejo de errores -->
        <%
            String error = (String) request.getAttribute("error"); 
            if (error != null) {
        %>
                <p style="color: red"> <%= error %> </p>
        <%
            }
        %>
        
    </body>
</html>
