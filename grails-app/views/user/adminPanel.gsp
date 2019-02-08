<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 1/29/2019
  Time: 9:48 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Admin Panel</title>
    <meta name="layout" content="adminLayout" />
    <style>

    </style>
</head>

<body>
<h1 class="ml-5 mt-5">Welcome Admin : ${session.user.username}</h1>
<div class="row mt-5" style="color: white">
    <div class="col-md-2 ml-5 bg-info">
        <h1 class="text-center mt-3">${userCount}</h1>
        <h4 class="text-center mb-3"><i class="fa fa-user"></i> Users</h4>
    </div>
    <div class="col-md-2 ml-5 bg-info">
        <h1 class="text-center mt-3">${categoryCount}</h1>
        <h4 class="mb-3"><i class="fa fa-list-alt"></i> Category</h4>
    </div>
    <div class="col-md-2 ml-5 bg-info">
        <h1 class="text-center mt-3">${productCount}</h1>
        <h4 class="text-center mb-3"><i class="fa fa-industry"></i> Products</h4>
    </div>
    <div class="col-md-2 ml-5 bg-info">
        <h1 class="text-center mt-3">${orderCount}</h1>
        <h4 class="text-center mb-3"><i class="fas fa-cart-plus"></i> Orders</h4>
    </div>
</div>
</body>
</html>