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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <h1>Hamburguesería Bosco</h1>
        
        <% 
            ArrayList<Producto> hamburguesas = 
                    ( ArrayList<Producto> ) request.getAttribute("hamburguesas");
            ArrayList<Producto> complementos = 
                    ( ArrayList<Producto> ) request.getAttribute("complementos");
             ArrayList<Producto> bebidas = 
                    ( ArrayList<Producto> ) request.getAttribute("bebidas");
            
            %>
        <form action="tpvServlet" method="post">
            <!-- Nav tabs -->
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#Hamburguesas">Hamburguesas</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#Complementos">Complementos</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#Bebidas">Bebidas</a>
  </li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <div class="tab-pane container active" id="Hamburguesas">
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
                   <input type="number" value="0" name="<%=hamb.getId()%>">
               </td>
           </tr>          
            <% } %>
             </table>
        
    </div>
    <div class="tab-pane container fade" id="Complementos">
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
                   <input type="number" value="0"  name="<%=comp.getId()%>">
               </td>
           </tr>          
            <% } %>
             </table>
    </div>
    <div class="tab-pane container fade" id="Bebidas">
          <table>
           <% for ( Producto hamb: bebidas) { %>
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
                   <input type="number" value="0"  name="<%=hamb.getId()%>">
               </td>
           </tr>          
            <% } %>
            </table>
    </div>
</div>


             <input type="submit" value="Hacer pedido">
        </form>
        </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
