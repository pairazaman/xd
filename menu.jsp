<%-- 
    Document   : menu
    Created on : 11 may. 2024, 10:19:43
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <style>
            nav {
                background-color: black;
            }
            .menu {
                list-style-type: none;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
            }
            .menu li {
                position: relative;
            }
            .menu li a, .dropbtn {
                display: inline-block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }
            .menu li a img {
                vertical-align: middle;
                margin-right: 8px;
                height: 24px;
            }
            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #666; 
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }
            .dropdown-content a {
                color: white;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                text-align: left;
            }
            .dropdown-content a:hover {
                background-color: #ddd;
                color: black;
            }
            .dropdown:hover .dropdown-content {
                display: block;
            }
            .dropdown:hover .dropbtn {
                background-color: #333;
            }
            .right {
                margin-left: auto;
            }
        </style>
    </head>
    <body>


        <form action="ValidarLogin" method="GET">  
            <nav>
                <ul class="menu">
                    <li>
                        <a href="index.jsp"><img src="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sneaker-store-logo-brand-logo-design-template-ea9c8040d69fa064feee3014cb8e9827_screen.jpg?ts=1645976739" alt="Home" height="36px"></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropbtn"><img src="https://cdn-icons-png.flaticon.com/512/3126/3126647.png" alt="Clientes">Clientes</a>
                        <div class="dropdown-content">
                            <a href="ControlerCliente?Op=Listar">Listar Cliente</a>
                            <a href="ControlerCliente?Op=Nuevo">Nuevo Cliente</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropbtn"><img src="https://i.pinimg.com/originals/08/a1/28/08a12862ae7f19b19c96d31a1b282e4c.png" alt="Producto">Producto</a>
                        <div class="dropdown-content">
                            <a href="ControlerProducto?Op=ListarP">Listar Producto</a>
                            <a href="ControlerProducto?Op=NuevoProducto">Nuevo Producto</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropbtn"><img src="https://cdn-icons-png.flaticon.com/512/7132/7132915.png" alt="Pedidos">Pedidos</a>
                        <div class="dropdown-content">
                            <a href="ControlerPedido?Op=ListarPe">Listar Pedido</a>
                            <a href="nuevoPedido.jsp">Nuevo Pedido</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropbtn"><img src="https://cdn-icons-png.flaticon.com/512/7132/7132915.png" alt="Pedidos">Empleados</a>
                        <div class="dropdown-content">
                            <a href="ControlerEmpleado?Op=Listar">Lista De Empleados</a>
                            <a href="ControlerEmpleado?Op=Nuevo">Nuevo Empleado</a>
                        </div>
                    </li>
                    <li class="right"><a href="CerrarSesion"><img src="https://previews.123rf.com/images/tmricons/tmricons1707/tmricons170700591/81207192-cerrar-sesi%C3%B3n-icono-bot%C3%B3n-de-cierre-de-sesi%C3%B3n.jpg" alt="Cerrar Sesión">Cerrar Sesión</a></li>
                </ul>
            </nav>
        </form>
        <script>

            document.addEventListener("click", function (event) {
                closeDropdowns(event.target);
            });

            function closeDropdowns(clickedElement) {
                var dropdowns = document.querySelectorAll(".dropdown");
                dropdowns.forEach(function (dropdown) {
                    var dropdownContent = dropdown.querySelector(".dropdown-content");
                    if (dropdownContent.style.display === "block" && !dropdown.contains(clickedElement)) {
                        dropdownContent.style.display = "none";
                    }
                });
            }

            var dropdownLinks = document.querySelectorAll(".dropdown > a");
            dropdownLinks.forEach(function (link) {
                link.addEventListener("click", function (event) {
                    event.preventDefault();
                    event.stopPropagation();
                    var dropdownContent = this.parentNode.querySelector(".dropdown-content");
                    dropdownContent.style.display = (dropdownContent.style.display === "block") ? "none" : "block";
                });
            });
        </script>
    </body>
</html>
