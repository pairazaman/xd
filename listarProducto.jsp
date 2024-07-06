
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
        <title>Productos</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            th, td {
                padding: 8px;
                text-align: left;
                border: 2px solid #ddd;
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
            .actions a {
                text-decoration: none;
                color: black;
                font-weight: bold;
                padding: 5px 10px;
                border: 1px solid black;
                margin: 0 5px;
                display: inline-block;
                border-radius: 5px; /* Opcional: redondea los bordes */
                background-color: white; /* Fondo blanco para los botones */
            }
            .actions a:hover {
                color: white;
                background-color: black; /* Fondo negro al pasar el mouse */
            }
            .actions {
                text-align: center; /* Centrar el contenido de la columna de acciones */
                white-space: nowrap; /* Evitar que el texto se envuelva */
            }
            .title {
                text-align: center;
                margin-bottom: 20px;
            }
            .create-btn {
                text-align: right;
                margin-bottom: 10px;
            }
            .create-btn a {
                display: inline-block;
                padding: 8px 16px;
                background-color: black;
                color: white;
                text-decoration: none;
                border-radius: 10px;
                margin-right: 10px;
            }
            .create-btn a:hover {
                background-color: grey;
            }
        </style>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <br>
        <h1 class="title">LISTA DE PRODUCTOS</h1>
        <table>
            <tr>
                <th>Codigo Producto</th>
                <th>Descripcion</th>
                <th>Costo</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th>Acciones</th> 
            </tr>

            <c:forEach var="campo" items="${ListaP}">
                <tr>
                    <td>${campo.id}</td>
                    <td>${campo.descripcion}</td>
                    <td>${campo.costo}</td>
                    <td>${campo.precio}</td>
                    <td>${campo.cantidad}</td>
                    <td class="actions">
                        <a href="ControlerProducto?Op=Consultar&Id=${campo.id}">Consultar</a>
                        <a href="ControlerProducto?Op=Modificar&Id=${campo.id}">Modificar</a>
                        <a href="ControlerProducto?Op=Eliminar&Id=${campo.id}">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <div class="create-btn">
            <a href="ControlerProducto?Op=NuevoProducto">Nuevo Producto</a>
        </div>
    </body>
</html>