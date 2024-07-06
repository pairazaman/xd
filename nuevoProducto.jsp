
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nuevo Producto</title>
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
        <%@ include file="menu.jsp" %>
        <br>
        <br>
        <br>
        <h1 class="title">AGREGAR PRODUCTO NUEVO</h1>
        <div class="container">
            <div class="form-container">
                <form action="ControlerProducto" method="post">   
                    <table>
                        <tr>
                            <td>Id Producto</td>
                            <td><input type="hidden" name="Id"></td>
                        </tr>
                        <tr>
                            <td>Descripción</td>
                            <td><input type="text" name="descripcion"></td>
                        </tr>
                        <tr>
                            <td>Costo</td>
                            <td><input type="text" name="costo"></td>
                        </tr>     
                        <tr>
                            <td>Precio</td>
                            <td><input type="text" name="precio"></td>
                        </tr>        
                        <tr>
                            <td>Cantidad</td>
                            <td><input type="text" name="cantidad"></td>
                        </tr>  
                    </table>
                    <input class="btn1" type="submit" name="modificar" value="Grabar"> 
                </form>
            </div>
            <div class="image-container">
                <img src="https://cdn-icons-png.flaticon.com/512/7466/7466065.png" alt="Image">
            </div>
        </div>
    </body>
</html>