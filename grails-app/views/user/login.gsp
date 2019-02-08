<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 1/29/2019
  Time: 9:38 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>




<html>
<head>
    <title>Login Page</title>
    <g:render template="header"></g:render>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'login.css')}" type="text/css">
</head>

<body>
<div class="login-wrap">
    <div class="login-html">
        <h5 class="text-danger">${message}</h5>
        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
        <input id="tab-2" type="radio" name="tab" class="for-pwd"><label for="tab-2" class="tab">Forgot Password</label>

        <div class="login-form">

            <g:form action="checkLogin" controller="user" method="post">
                <div class="sign-in-htm">
                    <div class="group">
                        <label for="user" class="label">Username or Email</label>
                        <input id="user" name="username" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <input id="pass" type="password" name="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="Sign In">
                    </div>
                    <div class="hr"></div>

            </g:form>
            <div class="for-pwd-htm">
                <div class="group">
                    <label for="user" class="label">Username or Email</label>
                    <input id="user" type="text" class="input">
                </div>
                <div class="group">
                    <input type="submit" class="button" value="Reset Password">
                </div>
                <div class="hr"></div>
            </div>
        </div>
        </div>
    </div>
</div>
</body>
</html>