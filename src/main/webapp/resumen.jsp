<%-- 
    Document   : resumen
    Created on : 01-feb-2021, 20:07:48
    Author     : DAW2-PROFESOR
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Pedido</h1>
                
        <% 
            ArrayList<Producto> carrito = 
                    ( ArrayList<Producto> ) request.getAttribute("carrito");  
            Float total = ( Float ) request.getAttribute("total");  
            %>
            <table>
           <% for ( Producto hamb: carrito) { %>
           <tr>
               <td>
                   <img src="<%=hamb.getImagen()%>">
               </td>
               <td>
                  <%=hamb.getNombre()  %>
               </td>
               <td>
                  <%=hamb.getPrecio()  %>
               </td>
               <td>
                     <%=hamb.getUnidadesPedidas() %>
               </td>
           </tr>          
            <% } %>
             </table>
             <h2>Total: <%=total %></h2>
    </body>
</html>
