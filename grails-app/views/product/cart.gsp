<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 1/30/2019
  Time: 11:13 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cart</title>
    <g:render template="header"></g:render>
</head>

<body>
<g:render template="navbar"></g:render>
<div class="container">
<h2 class="mt-3 text-center text-primary">Products in Cart</h2>
    <table class="container table table-striped mt-2">
        <tr>
            <th>S.N</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Discount</th>
            <th>Brand</th>
            <th>Category</th>
            <th>Image</th>
        <g:if test="${numberInCart != 0}">
            <th>Remove From Cart</th>
        </g:if>
        </tr>
        <g:each in="${session.cart}" status="i" var="productId">
            <g:set var="product" value="${grails_ecommerce.Product.get(productId)}" />
            <tr>
                <td>${i+1}</td>
                <td>${product.productName}</td>
                <td>Rs. ${product.price}</td>
                <td>Rs. ${product.discount}</td>
                <td>${product.brand}</td>
                <td>${product.categoryName}</td>
                <td><img src="${resource(dir: 'product/images',file: product.image)}" height="60" width="60"></td>
                <td class="tect-center"><g:link controller="product" action="deleteFromCart"
                            params="${[productId: product.id]}"
                ><h3><i class="fa fa-remove" style="color: red"></i></h3>
                </g:link></td>
            </tr>
        </g:each>
    </table>
    <g:if test="${numberInCart != 0}">
        <div class="text-center">
            <g:link action="placeOrder" controller="product" class="btn btn-warning">Check Out</g:link>
        </div>
    </g:if>
    <g:if test="${numberInCart == 0}">
        <div class="text-center">
            <h4 class="text-danger">No Items in the Cart</h4>
        </div>
    </g:if>
</body>
</html>