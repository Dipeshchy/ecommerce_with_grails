<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2/7/2019
  Time: 10:25 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Contact Us</title>
    <g:render template="header"></g:render>
</head>

<body>
<g:render template="navbar"></g:render>
<div class="container">
    <h1 class="mt-3 text-primary text-center">Contact us</h1>
    <hr>
    <div class="row">
        <div class="col-md-6 ml-5">
            <h4 class="text-danger">Main Office</h4>
            <p class="text-info">Baneshwor beside BCCI</p>
            <p class="text-info">Kathamndu Nepal</p>
            <p class="text-info">01-4278147,01-5427891</p>
            <p class="text-info">9842781927,9845673812</p>
            <p class="text-info">Email: chaudharydipesh627@gmail.com</p>
            <p class="text-info">Fax: ram@myshop.com</p>
        </div>

        <div class="col-md-5">
            <h4 class="text-danger">Branch Office</h4>
            <p class="text-info">Maharajgunj ,Opposite To US Embassy</p>
            <p class="text-info">Kathamndu Nepal</p>
            <p class="text-info">01-4274312,01-5782912</p>
            <p class="text-info">9854167893,9845389127</p>
            <p class="text-info">Email: ramkumar573@gmail.com</p>
            <p class="text-info">Fax: ram@myshop.com</p>
        </div>
    </div>
</div>
<div class="fixed-bottom ml-5 mr-5">
    <g:render template="footer"></g:render>
</div>
</body>
</html>