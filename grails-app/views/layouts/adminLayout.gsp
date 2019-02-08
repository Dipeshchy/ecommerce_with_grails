<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 1/30/2019
  Time: 7:58 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My Shop Admin Panel</title>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'bootstrap.min.css')}">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <style>
              h5 {
                  color: white;
              }

            #sidenav-items {
                list-style-type: none;
            }
            ul {
                list-style-type: none;
            }
        </style>
<link rel="shortcut icon" href="${resource(dir: 'images',file: 'title-icon.jpg')}">
</head>



<nav class="bg-primary navbar-light">

    <ul class="nav mr-auto">
        <li class="nav-item">
            <g:link action="adminPanel" controller="user">
                <h1 class="text-warning ml-5 mt-2 navbar-brand">My Shop Admin Panel</h1>
            </g:link>
        </li>
        <li class="nav-item">
            <g:link action="dashboard" controller="product" class="nav-link">
                <h5 class="ml-4 mt-2">Home</h5>
            </g:link>
        </li>

    </ul>
</nav>
    <div class="row">
<div class="bg-primary col-md-2 card" style="height: 92%">
<ul id="sidenav-items" class="mt-5">
    <li>
        <g:link controller="user" action="adminPanel">
            <h5 class=""><i class="fas fa-tachometer-alt"></i> Dashboard</h5>
        </g:link>
    </li>
    <li>
        <g:link controller="user" action="index">
            <h5 class="mt-4"><i class="fa fa-user"></i> User</h5>
        </g:link>
    </li>
    <li>
        <g:link controller="category" action="index">
            <h5 class="mt-4"><i class="fa fa-list-alt"></i> Category</h5>
        </g:link>
    </li>
    <li>
        <g:link controller="product" action="index">
            <h5 class="mt-4"><i class="fa fa-industry"></i> Product</h5>
        </g:link>
    </li>
    <li>
        %{--<g:remoteLink controller="product" action="index"--}%
                      %{--update="adminBody">--}%
            %{--<h5 class="mt-4"><i class="fas fa-cart-plus"></i> Order</h5>--}%
        %{--</g:remoteLink>--}%
        <g:link controller="orderEcommerce" action="index">
            <h5 class="mt-4"><i class="fas fa-cart-plus"></i> Order</h5>
        </g:link>
    </li>
    <li class="mt-4">
        <g:link action="logout" controller="user">
            <h5 id="logout" class="mt-2"><i class="fas fa-sign-out-alt"></i> Logout</h5>
        </g:link>
    </li>
</ul>
</div>
<div class="col-md-8">
    <g:layoutBody/>
</div>
</div>
</body>
</html>