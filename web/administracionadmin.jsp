

<%@page import="Tiendavirtual.modelo.Consultas" %>
<%@page import="Tiendavirtual.modelo.Cliente" %>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
             <link rel="stylesheet" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
 
        
        Bienvenido
        <% HttpSession sesion=request.getSession();
        String adm_mail=(String)sesion.getAttribute("adm_mail"); 
         out.println( adm_mail );
       
    
    %>
        
        <% ArrayList<Cliente> lista = new ArrayList<Cliente>();
            Consultas con = new Consultas();
            con.mostrar(lista);
        %>
        <h2>Lista de Usuarios</h2>
<table cellspacing='0'> <!-- cellspacing='0' is important, must stay -->
	<thead>
		<tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>NIF</th>
                    <th>Direccion</th>
                    <th>Mail</th>
                     <th>Modificar</th>
                      <th>Eliminar</th>
                    
                          <%
                for(Cliente c1:lista){
            %>  
                    
		</tr>
	</thead><!-- Table Header -->

	<tbody>
		<tr>
                <td><%out.println(c1.getUsu_id());%></td>
                <td><%out.println(c1.getUsu_nombre());%></td>
                <td><%out.println(c1.getUsu_apellidos());%></td>
                <td><%out.println(c1.getUsu_nif());%></td>
                <td><%out.println(c1.getUsu_dire());%></td>
                <td><%out.println(c1.getUsu_mail());%></td>
                <td><a>MODIFICAR</a></td>
                <td><a>ELIMINAR</a></td>
		</tr><!-- Table Row -->

	</tbody>
         <% } %>
</table>
<br/><br/><br/>
<a href="index.jsp">SALIR</a>

    </body>
</html>
