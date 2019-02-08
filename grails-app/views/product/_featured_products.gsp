<%@ page import="grails_ecommerce.Product" %>
<h2 class="mt-2 ml-2">${message} ( ${productList.size()} )</h2>
<div class="row mb-3">

    <g:each in="${productList}" status="i" var="product">
        <div class="col-md-3 card mt-2 ml-5 mr-3">
            <g:link action="moreInfo" controller="product" params="${[product: product.id]}">
                <img class="mt-1 mb-1" src="${resource(dir: 'product/images',file: product.image)}"
                     alt="product image" height="200" width="200"></g:link>
            <g:link action="moreInfo" controller="product" params="${[product: product.id]}">
                <h5 class="text-center text-primary mt-1">${product}</h5>
            </g:link>
            <span class="text-center">Price : Rs. ${product.price}</span>
            <span class="text-center">Discount : Rs. ${product.discount}</span>
            <g:link action="addToCart" controller="product" params="${[product: product.id]}" class="btn btn-success mt-1">Add To Cart</g:link>
            <g:link action="moreInfo" controller="product" params="${[product: product.id]}" class="btn btn-info mt-1 mb-2">More Info</g:link>
        </div>
    </g:each>
</div>

