<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<pedido> ListaPe = (List<pedido>) request.getAttribute("Lista");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Pedido</title>
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
            input[type="text"], input[type="date"] {
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
        <br><br><br>
        <div class="content">
            <form action="ControlerPedido" method="post">
                <c:forEach var="pedido" items="${ListaPe}">
                    <h2>EDITAR DATOS DEL PEDIDO ${pedido.id_Pedido}</h2>
                    <table>
                        <tr>
                            <td>Id Pedido</td>
                            <td>${pedido.id_Pedido}</td>
                            <input type="hidden" name="Id_Pedido" value="${pedido.id_Pedido}">
                        </tr>
                        <tr>
                            <td>Id Cliente</td>
                            <td><input type="text" name="Id_Cliente" value="${pedido.id_Cliente}"></td>
                        </tr>
                        <tr>
                            <td>Fecha</td>
                            <td><input type="date" name="Fecha" value="${pedido.fecha}"></td>
                        </tr>
                        <tr>
                            <td>SubTotal</td>
                            <td><input type="text" name="SubTotal" value="${pedido.subTotal}"></td>
                        </tr>
                        <tr>
                            <td>Total Venta</td>
                            <td><input type="text" name="TotalVenta" value="${pedido.totalVenta}"></td>
                        </tr>
                    </table>
                </c:forEach>
                <input type="submit" class="btn1" name="modificar" value="Modificar">
            </form>
        </div>
    </body>
</html>