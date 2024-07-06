<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.pedido"%>
<%
    List<pedido> ListaPe = (List<pedido>) request.getAttribute("ListaPe");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Pedido</title>
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
            
            .btn-primary {
                text-decoration: none;
                color: white;
                font-weight: bold;
                padding: 5px 10px;
                border: 1px solid black;
                margin: 0 5px;
                display: inline-block;
                border-radius: 5px; /* Opcional: redondea los bordes */
                background-color: black;               
            }
            
            .btn-primary:hover {
                color: white;
                background-color: black;
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
            .color{
                padding: 8px;
                text-align: left;
                border: 2px solid #ddd;
                background-color: black;
                color: white;
                text-align: center;
            }
            .color td{
                color: white;  
            }
            
            
        </style>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <div class="content">
            <div class="container mt-6" style="margin-left: 0px;margin-right: 0px;">
                <div class="table-container">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h1>Listado de Pedidos</h1>
                        <form action="ControlerPedidoN?menu=NuevaVenta" method="POST">
                            <div>
                                <button class="btn btn-primary" type="submit" name="accion" value="ventanueva">Crear Pedido</button>
                            </div>
                        </form>
                    </div>
                    <table class="table table-hover" style="width:100%" >
                        <thead class="table-dark">  
                            <tr>
                                <th>Id Pedido</th>
                                <th>Id Cliente</th>
                                <th>Fecha</th>
                                <th>Subtotal</th>
                                <th>Total de Venta</th>
                                <th colspan="3">Acciones</th>
                            </tr>
                        </thead>    
                        <c:forEach var="campo" items="${ListaPe}">
                            <tbody>
                                <tr>
                                    <td>${campo.id_Pedido}</td>
                                    <td>${campo.id_Cliente}</td>
                                    <td>${campo.fecha}</td>
                                    <td>${campo.subTotal}</td>
                                    <td>${campo.totalVenta}</td>
                                    <td class="actions">
                                        <a class="btn btn-info btn-sm" href="ControlerPedido?Op=Consultar&Id_Pedido=${campo.id_Pedido}">Consultar</a>
                                        <a class="btn btn-warning btn-sm" href="ControlerPedido?Op=Modificar&Id_Pedido=${campo.id_Pedido}">Modificar</a>
                                        <a class="btn btn-danger btn-sm" href="ControlerPedido?Op=Eliminar&Id_Pedido=${campo.id_Pedido}">Eliminar</a>
                                    </td>
                                </tr>
                            </tbody>
                        </c:forEach>
                    </table> 
                </div>
            </div>
        </div>
    </body>
</html>
