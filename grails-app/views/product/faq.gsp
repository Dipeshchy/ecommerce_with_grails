<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2/7/2019
  Time: 10:25 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>FAQ</title>
    <g:render template="header"></g:render>
</head>

<body>
<g:render template="navbar"></g:render>
<div class="container">
    <h1 class="mt-3 text-primary text-center">Frequently Asked Questions</h1>
    <hr>

        <div class="col-md-12 ml-5">
           <h6 class="text-danger">1. Where are you located?</h6>
            <p class="text-info">=> We are located at Baneshwor.</p>
            <br>
            <h6 class="text-danger">2. Do you do home delivery?</h6>
            <p class="text-info">=> Yes We do.</p>
            <br>
            <h6 class="text-danger">3. Do we need to pay online or cash on delivery?</h6>
            <p class="text-info">=> We only entertain cash on delivery.</p>
        </div>

</div>
<div class="fixed-bottom ml-5 mr-5">
    <g:render template="footer"></g:render>
</div>
</body>
</html>