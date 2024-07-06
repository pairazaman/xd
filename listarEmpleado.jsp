<%-- 
    Document   : listarEmpleado
    Created on : 22 jun. 2024, 21:41:05
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.empleados"%>
<%
    List<empleados> Lista = (List<empleados>) request.getAttribute("Lista");
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
                background-color: black;
                color: white;
                text-align: center;
            }
            td {
                color: black;
                text-align: center;
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
                border-radius: 5px;
                background-color: white;
            }
            .actions a:hover {
                color: white;
                background-color: black;
            }
            .actions {
                text-align: center;
                white-space: nowrap;
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
        <h1 class="title">LISTA DE EMPLEADOS</h1>

        <table>
            <tr>
                <th>Id Usuario</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>DNI</th>
                <th>Cargo</th>
                <th>Direccion</th>
                <th>Telefono</th>
                <th>Password</th>
                <th>Acciones</th>
            </tr>
            
            <c:forEach var="campo" items="${Lista}">
                <tr>
                    <td>${campo.id}</td>
                    <td>${campo.nombres}</td>
                    <td>${campo.apellidos}</td>
                    <td>${campo.DNI}</td>
                    <td>${campo.cargo}</td>
                    <td>${campo.direccion}</td>
                    <td>${campo.telefono}</td>
                    <td>${campo.password}</td>
                    <td class="actions">
                        <a href="ControlerEmpleado?Op=Consultar&Id=${campo.id}">Consultar</a>
                        <a href="ControlerEmpleado?Op=Modificar&Id=${campo.id}">Modificar</a>
                        <a href="ControlerEmpleado?Op=Eliminar&Id=${campo.id}">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
