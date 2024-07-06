<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : 19/11/2021, 07:15:10 PM
    Author     : javie
--%>

<%@page import="java.util.List"%>
<%@page import="Entidades.cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<cliente> Lista = (List<cliente>) request.getAttribute("Lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }
            .content {
                margin: 20px auto;
                width: 100%;
                max-width: 600px;
                background: #fff;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            h2 {
                text-align: center;
                color: #333;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin: 20px 0;
            }
            table, th, td {
                border: 1px solid #ddd;
            }
            th, td {
                padding: 10px;
                text-align: left;
            }
            th {
                background-color: #f2f2f2;
            }
            input[type="text"] {
                width: calc(100% - 20px);
                padding: 8px;
                margin: 4px 0;
                box-sizing: border-box;
            }
            input[type="submit"] {
                background-color: black;
                color: white;
                padding: 10px 20px;
                margin: 10px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                box-sizing: border-box;
            }
            
        </style>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <br>
        <br>
        <br>

        <div class="content">
            <form action="ControlerCliente" method="post">   
                <c:forEach var="campo" items="${Lista}">
                    <h2>EDITAR DATOS DE ${campo.nombres} ${campo.apellidos}</h2>
                    <table>
                        <tr>
                            <td>Id Cliente</td>
                            <td>${campo.id}</td>
                        <input type="hidden" name="Id" value="${campo.id}">
                        </tr>
                        <tr>
                            <td>Apellidos</td>
                            <td><input type="text" name="apellidos" value="${campo.apellidos}"></td>
                        </tr>
                        <tr>
                            <td>Nombres</td>
                            <td><input type="text" name="nombres" value="${campo.nombres}"></td>
                        </tr>     
                        <tr>
                            <td>DNI</td>
                            <td><input type="text" name="DNI" value="${campo.DNI}"></td>
                        </tr>        
                        <tr>
                            <td>Dirección</td>
                            <td><input type="text" name="direccion" value="${campo.direccion}"></td>
                        </tr>  
                        <tr>
                            <td>Teléfono</td>
                            <td><input type="text" name="telefono" value="${campo.telefono}"></td>
                        </tr>                 
                        <tr>
                            <td>Móvil</td>
                            <td><input type="text" name="movil" value="${campo.movil}"></td>
                        </tr>                 
                    </table>
                </c:forEach>
                <input type="submit" name="modificar" value="Modificar"> 
            </form>
        </div>
    </body>
</html>
