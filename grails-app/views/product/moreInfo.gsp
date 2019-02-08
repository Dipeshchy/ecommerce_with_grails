<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 1/30/2019
  Time: 11:04 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${product}</title>
    <g:render template="header"></g:render>
</head>

<body>
<g:render template="navbar"></g:render>
<div class="container">
    <div class="card mt-4">
        <h2 class="ml-5 mt-2">Detail About ${product}</h2>
        <div class="row">
            <div class="col-md-4 ml-5">

                <img class="mt-1 mb-1" src="${resource(dir: 'product/images',file: product.image)}"
                     alt="product image" height="400" width="400">

            </div>
            <div class="col-md-6 ml-5 card">
                <h2 class="mt-2">${product}</h2>
                <p><strong>Price</strong> : Rs. ${product.price}</p>
                <p><strong>Discount</strong> : Rs. ${product.discount}</p>
                <p><strong>In Stock</strong> : ${product.stock}</p>
                <p><strong>Brand</strong> : ${product.brand}</p>
                <p><strong>Category</strong> :  ${product.categoryName}</p>
                <p><strong>Description</strong> : ${product.description}</p>
                <br>
                <g:link action="addToCart" controller="product" params="${[product: product.id]}" class="btn btn-success mt-2 mb-4">Add To Cart</g:link>
            </div>
        </div>
    </div>
</div>
<div class="fixed-bottom ml-5 mr-5">
    <g:render template="footer"></g:render>
</div>
</body>
</html>