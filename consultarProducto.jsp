
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<producto> ListaP = (List<producto>) request.getAttribute("ListaP");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylelist.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f9f9f9;
            }

            .content {
                display: flex;
                flex-direction: column;
                align-items: center;
                margin: 20px auto;
                width: 100%;
            }

            .container {
                width: 80%;
                max-width: 1000px;
                padding: 20px;
                background-color: white;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin: 20px 0;
            }

            th, td {
                padding: 12px;
                text-align: left;
                border: 1px solid #ddd;
            }

            th {
                background-color: black; /* Fondo negro para los encabezados */
                color: white; /* Letras blancas para los encabezados */
                text-align: center; /* Centrar el texto */
            }

            td {
                color: black;
                text-align: center; /* Centrar el texto */
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            tr:hover {
                background-color: #ddd;
            }

            h2 {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <br>
        <br>
        <div class="content"> <!-- Iniciar el contenedor principal -->
            <div class="container"> <!-- Iniciar el contenedor secundario -->
                <table border="1">
                    <c:forEach var="campo" items="${ListaP}">
                        <h2>PRODUCTO ${campo.descripcion}</h2>
                        <tr>
                            <td>Id Producto</td>
                            <td>${campo.id}</td>
                        </tr>
                        <tr>
                            <td>Descripcion</td>
                            <td>${campo.descripcion}</td>
                        </tr>
                        <tr>
                            <td>Costo</td>
                            <td>${campo.costo}</td>
                        </tr>     
                        <tr>
                            <td>Precio</td>
                            <td>${campo.precio}</td>
                        </tr>        
                        <tr>
                            <td>Cantidad</td>
                            <td>${campo.cantidad}</td>
                        </tr>  
                    </c:forEach>
                </table>
            </div> <!-- Cerrar el contenedor secundario -->
        </div> <!-- Cerrar el contenedor principal -->
    </body>
</html>