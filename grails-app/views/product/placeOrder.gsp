<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 1/30/2019
  Time: 11:32 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User Detail</title>
    <g:render template="header"></g:render>
</head>

<body>
<g:render template="navbar"></g:render>
<div class="container mt-3 card">
    <h1 class="ml-5 text-center mt-2">Confirm Order</h1>
    <div class="row">
        <div class="col-md-6">
    <h4 class="ml-5">Customer Detail</h4>
        </div>
        <div class="col-md-6">
    <h4 class="ml-5">Items in Cart</h4>
        </div>
    </div>
    <div class="row">
        <g:form action="confirmOrder" controller="product" class="form-group col-md-4 mt-3 ml-5">

            <input type="text" name="fullName" class="form-control" required placeholder="Full Name">

            <input type="email" name="email" class="form-control mt-3" required placeholder="Email">
            <input type="number" name="mobile" class="form-control mt-3" required placeholder="Mobile Number">
            <input type="number" name="phone" class="form-control mt-3" required placeholder="Phone Number">
            <input type="text" name="address" class="form-control mt-3" placeholder="Address" required>
            <input type="submit" name="submit" value="Confirm Order" class="mt-3 btn btn-primary">
        </g:form>
        <div class="col-md-7 card ml-3 mt-3">
            <table class="table table-cell">
                <tr>
                   <th>S.N</th>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Discount</th>
                    <th>Total</th>
                </tr>
            <g:each in="${session.cart}" status="i" var="productId">
                <g:set var="product" value="${grails_ecommerce.Product.get(productId)}" />
                <tr>
                    <td>${i+1}</td>
                    <td>${product.productName}</td>
                    <td>Rs. ${product.price}</td>
                    <td>Rs. ${product.discount}</td>
                    <td>Rs. ${product.price - product.discount}</td>

                </tr>
            </g:each>

            </table>
    </div>
    </div>
</div>
<div class="fixed-bottom ml-5 mr-5">
    <g:render template="footer"></g:render>
</div>
</body>
</html>