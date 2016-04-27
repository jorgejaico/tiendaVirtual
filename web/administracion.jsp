

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido</h1>
        <% HttpSession sesion=request.getSession();
        String usu_mail=(String)sesion.getAttribute("usu_mail"); 
         out.println( usu_mail );
       
    
    %>
    <br/><br/><br/>
    <a href="index.jsp">SALIR</a>
    </body>
</html>
