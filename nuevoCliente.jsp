<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : 19/11/2021, 07:15:10 PM
    Author     : javie
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }
            .container {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
                margin: 20px;
            }
            .form-container {
                width: 50%;
            }
            .form-container table {
                width: 100%;
                border-collapse: collapse;
            }
            .form-container th, .form-container td {
                padding: 8px;
                text-align: left;
                border: 1px solid #ddd;
            }
            .form-container tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            .form-container tr:hover {
                background-color: #ddd;
            }
            .form-container input[type="text"] {
                width: 100%;
                padding: 6px;
                margin: 4px 0;
                box-sizing: border-box;
            }
            .form-container input[type="submit"] {
                background-color: black;
                color: white;
                padding: 10px 20px;
                border: none;
                cursor: pointer;
                margin-top: 10px;
            }
            .form-container input[type="submit"]:hover {
                background-color: black;
            }
            .image-container {
                width: 35%;
                text-align: right;
            }
            .image-container img {
                max-width: 100%;
                height: auto;
            }
            .title {
                text-align: center;
                margin-bottom: 20px;
            }
        </style>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <br> 
        <h1 class="title">AGREGAR CLIENTE NUEVO</h1>
        <div class="container">
            <div class="form-container">
                <form action="ControlerCliente" method="post">   
                    <table>
                        <tr>
                            <td>Id Cliente</td>
                            <td><input type="hidden" name="Id"></td>
                        </tr>
                        <tr>
                            <td>Apellidos</td>
                            <td><input type="text" name="apellidos"></td>
                        </tr>
                        <tr>
                            <td>Nombres</td>
                            <td><input type="text" name="nombres"></td>
                        </tr>     
                        <tr>
                            <td>DNI</td>
                            <td><input type="text" name="DNI"></td>
                        </tr>        
                        <tr>
                            <td>Dirección</td>
                            <td><input type="text" name="direccion"></td>
                        </tr>  
                        <tr>
                            <td>Teléfono</td>
                            <td><input type="text" name="telefono"></td>
                        </tr>                 
                        <tr>
                            <td>Móvil</td>
                            <td><input type="text" name="movil"></td>
                        </tr>                 
                    </table>
                    <input type="submit" name="modificar" value="Grabar"> 
                </form>
            </div>
            <div class="image-container">
                <img src="https://img.freepik.com/vector-premium/agregar-icono-clientes-esquema-agregar-icono-vector-clientes-diseno-web-aislado-sobre-fondo-blanco_96318-62822.jpg" alt="Image">
            </div>
        </div>
    </body>
</html>


