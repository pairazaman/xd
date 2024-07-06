<%-- 
    Document   : index
    Created on : 17/09/2022, 08:38:47 AM
    Author     : javie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

        <title>JSP Page</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            if (session.getAttribute("user") == null) {
                response.sendRedirect("login.jsp");
                return; // Importante para evitar que el resto de la página se procese
            }
        %>

        <%@include file="menu.jsp" %>

        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                background-image: url('https://www.zapatillasysneakers.com/sites/default/files/styles/landscape_big/public/static/images/news/mejores_tiendas_zapatillas_valencia_strap_1.jpeg?itok=hC-dUA0u&c=af0a3bfd71c79d5148da0fbfd0f6daef');
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
                color: white;
            }
        </style>

        <br> 
        <br>
        <br> 
        <br> 
        <br> 
        <br>  
        <br>
        <div class="row justify-content-center text-center align-items-center g-2">
            <div class="col p-3 text-bg-dark" style="border-top-left-radius: 1rem; border-bottom-left-radius: 1rem;">
                <h5>Administrar Clientes</h5>
                <hr>
                <small class="text-justify">Gestiona de manera efectiva los datos de tus clientes (Agrega, Edita y elimina clientes)</small>
                <br>
                <a href="ControlerCliente?Op=Listar" class="btn btn-primary mt-3">Revisar Tabla de Clientes</a> <br>
                <a href="ControlerCliente?Op=Nuevo" class="btn btn-success m-3">Agregar nuevo Clientes</a>
            </div>
            <div class="col p-3 text-light" style="background: #614BC3">
                <h5>Administrar Productos</h5>
                <hr>
                <small class="text-justify">Verifica el inventario de tus productos y agrega nuevos al catálogo de la tienda</small>
                <br>
                <a href="ControlerProducto?Op=ListarP" class="btn btn-primary mt-3">Revisar Tabla de Productos</a> <br>
                <a href="ControlerProducto?Op=NuevoProducto" class="btn btn-success m-3">Agregar nuevo Producto</a>
            </div>
            <div class="col p-3 text-bg-danger" style="border-top-right-radius: 1rem; border-bottom-right-radius: 1rem;">
                <h5>Administrar Pedidos</h5>
                <hr>
                <small class="text-justify">Confirma el estado de un pedido y permítele a tus clientes hacer seguimiento de sus compras</small>
                <br>
                <a href="" class="btn btn-primary mt-3" >Revisar Tabla de Pedidos</a><br>
                <a href="" class="btn btn-success m-3">Nuevo Pedido </a>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>

    </body>
</html>
