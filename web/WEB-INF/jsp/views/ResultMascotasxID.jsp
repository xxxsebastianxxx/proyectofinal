<%-- 
    Document   : ListarMascotas
    Created on : 24/02/2022, 08:46:30 AM
    Author     : ryzen3
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

             <script src="js/newjavascript.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.4/css/dataTables.bootstrap4.min.css"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>vista mascotas</title>
    </head>
    <body>        
        <%@include file="../views/caebezera.jsp" %>
        <br>
        <br>
        <br>
        <h4 style="text-align: center; color:greenyellow ;">
           listado de mascotas!
        </h4>
        <div style="padding-left:8rem; padding-right: 8rem; padding-top: 3rem; padding-bottom:8rem;"> 
        <table class="table table-striped table-bordered " id="dtmascotas" style="whidth: 100%">
            <thead>
              <tr>
                <th scope="col">id</th>
                <th scope="col">nombre</th>
                <th scope="col">raza</th>
                <th scope="col">genero</th>
                <th scope="col">tipo de animal</th>
                <th scope="col">vacunas</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${mascotas}" var="mascotas">
              <tr>
                  <td><c:out value="${mascotas.id_mascotas}"></c:out></td>
                  <td><c:out value="${mascotas.nombre_mascota}"></c:out></td>
                  <td><c:out value="${mascotas.raza}"></c:out></td>
                  <td><c:out value="${mascotas.genero}"></c:out></td>
                  <td><c:out value="${mascotas.tipo_de_mascotas}"></c:out></td>
                  <td><c:out value="${mascotas.vacunas}"></c:out></td>
              </tr>
              </c:forEach>
            </tbody>
            <tfoot>
                <th>id</th>
                <th>nombre</th>
                <th>raza</th>
                <th>genero</th>
                <th>tipo de animal</th>
                <th>vacunas</th>>
            </tfoot>
          </table>
              <a class="btn btn-prymary" href="formMascota.htm">atras</a>
        </div>
      <%@include file="../views/footer.jsp" %>
      
      
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap4.min.js"></script>
        
        <script>   
           $(document).ready(function() {
                $('#dtmascotas').DataTable();
            } );
        </script>
        
    </body>
</html>