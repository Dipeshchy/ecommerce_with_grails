<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 1/29/2019
  Time: 8:24 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome To My Shop</title>
    %{-- includes external css and js--}%
    <g:render template="header"></g:render>
</head>
<body>
%{-- navbar template --}%
<g:render template="navbar"></g:render>
%{-- carousel--}%
<div class="row ml-5">
    <div class="col-md-2 mt-3 mr-2 card">
        <g:render template="category_list"></g:render>

    </div>
<div class="mt-3 col-md-9 ml-2" id="carousel">
    <g:render template="carousel"></g:render>
</div>
</div>
    <div class="row mt-5 ml-5">
    <div class="col-md-2 mr-2 card">
        <g:render template="advance_search"></g:render>
    </div>
        <div class="ml-4 col-md-9 card" id="result">
            <g:render template="featured_products"></g:render>
    </div>
</div>
<div class="ml-5 mr-5">
    <g:render template="footer"></g:render>
</div>
</body>
</html>