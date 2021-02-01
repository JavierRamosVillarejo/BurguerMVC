<%-- 
    Document   : tpv
    Created on : 29-ene-2021, 21:19:50
    Author     : DAW2-PROFESOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Producto" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hamburguesería Bosco</h1>
        
        <% 
            ArrayList<Producto> hamburguesas = 
                    ( ArrayList<Producto> ) request.getAttribute("hamburguesas");
            ArrayList<Producto> complementos = 
                    ( ArrayList<Producto> ) request.getAttribute("complementos");
             ArrayList<Producto> bebidas = 
                    ( ArrayList<Producto> ) request.getAttribute("bebidas");
            
            %>
        <form action="tpvServlet">
            <table>
           <% for ( Producto hamb: hamburguesas) { %>
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
                   <input type="number" name="<%=hamb.getId()%>">
               </td>
           </tr>          
            <% } %>
             </table>
           <table>
           <% for ( Producto comp: complementos) { %>
           <tr>
               <td>
                   <img src="<%=comp.getImagen()%>">
               </td>
               <td>
                  <%=comp.getNombre()  %>
               </td>
               <td>
                  <%=comp.getPrecio()  %>
               </td>
               <td>
                   <input type="number" name="<%=comp.getId()%>">
               </td>
           </tr>          
            <% } %>
             </table>
        </form>
    </body>
</html>
