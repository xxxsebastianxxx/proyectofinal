<%-- 
    Document   : formMascota
    Created on : 14/02/2022, 11:07:53 AM
    Author     : ryzen3
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <script src="js/newjavascript.js" type="text/javascript"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script> 
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>formulario mascota</title>
    </head>
    <body style="background-color: white;">
        <%@include file="../views/caebezera.jsp" %>
        <h4 style="font-family: cursive;
                   padding: 18px;
                   text-align: center;
                   color: black;">
           consultar usuario!
        </h4>
        <hr>   
         <div>
             <form:form commandName="usuario" method="post" cssClass="navbar-form">
            <div>
                <form:label style="margin-bottom: 7px;" path="direccion" cssClass="input-group-adddon">direccion usuario</form:label> 
                <br>
                <form:input path="direccion" cssClass="form-control"></form:input>
            </div><br> 
                <form:button name="ingresar" class="btn btn-warning btn-ig">consultar</form:button>
                <a class="btn btn-primary " href="ListarUsuario.htm" role="button">atras</a>
        </form:form>
        </div>
        
         <%@include file="../views/footer.jsp" %> 
    </body>
</html>
