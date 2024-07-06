
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
            <form action="ControlerProducto" method="post"> <!-- Iniciar el formulario -->
                <c:forEach var="campo" items="${ListaP}">
                    <h2>EDITAR DATOS DE PRODUCTO ${campo.descripcion}</h2>
                    <table>
                        <tr>
                            <td>Id Producto</td>
                            <td>${campo.id}</td>
                        <input type="hidden" name="Id" value="${campo.id}">
                        </tr>
                        <tr>
                            <td>Descripción</td>
                            <td><input type="text" name="descripcion" value="${campo.descripcion}"></td>
                        </tr>
                        <tr>
                            <td>Costo</td>
                            <td><input type="text" name="costo" value="${campo.costo}"></td>
                        </tr>
                        <tr>
                            <td>Precio</td>
                            <td><input type="text" name="precio" value="${campo.precio}"></td>
                        </tr>
                        <tr>
                            <td>Cantidad</td>
                            <td><input type="text" name="cantidad" value="${campo.cantidad}"></td>
                        </tr>
                    </table>
                </c:forEach>
                <input type="submit" class="btn1" name="modificar" value="Modificar"> <!-- Botón de submit -->
            </form>
        </div> <!-- Cerrar el contenedor principal -->
    </body>
</html>