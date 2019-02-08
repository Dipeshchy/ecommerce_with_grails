
<%@ page import="grails_ecommerce.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminLayout">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul>

				<li><g:link class="create" action="create">
					<button class="btn btn-success mt-4">New Product</button>
				</g:link></li>
			</ul>
		</div>
		<div id="show-product" class="content scaffold-show" role="main">
			<h1 class="ml-5"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list product list-group ml-5">
			
				<g:if test="${productInstance?.productName}">
				<li class="fieldcontain list-group-item">
					<span id="productName-label" class="property-label"><g:message code="product.productName.label" default="Product Name" /></span>
					:
						<span class="property-value" aria-labelledby="productName-label"><g:fieldValue bean="${productInstance}" field="productName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.brand}">
				<li class="fieldcontain list-group-item">
					<span id="brand-label" class="property-label"><g:message code="product.brand.label" default="Brand" /></span>
					:
						<span class="property-value" aria-labelledby="brand-label"><g:fieldValue bean="${productInstance}" field="brand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.price}">
				<li class="fieldcontain list-group-item">
					<span id="price-label" class="property-label"><g:message code="product.price.label" default="Price" /></span>
					:
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${productInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.discount}">
				<li class="fieldcontain list-group-item">
					<span id="discount-label" class="property-label"><g:message code="product.discount.label" default="Discount" /></span>
					:
						<span class="property-value" aria-labelledby="discount-label"><g:fieldValue bean="${productInstance}" field="discount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.image}">
				<li class="fieldcontain list-group-item">
					<span id="image-label" class="property-label"><g:message code="product.image.label" default="Image" /></span>
					:
						<span class="property-value" aria-labelledby="image-label">
					<img src="${resource(dir: 'product/images',file: productInstance.image)}" height="200" width="200">
				</span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.categoryName}">
				<li class="fieldcontain list-group-item">
					<span id="categoryName-label" class="property-label"><g:message code="product.categoryName.label" default="Category Name" /></span>
					:
						<span class="property-value" aria-labelledby="categoryName-label"><g:link controller="category" action="show" id="${productInstance?.categoryName?.id}">${productInstance?.categoryName?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.stock}">
				<li class="fieldcontain list-group-item">
					<span id="stock-label" class="property-label"><g:message code="product.stock.label" default="Stock" /></span>
					:
						<span class="property-value" aria-labelledby="stock-label"><g:fieldValue bean="${productInstance}" field="stock"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.description}">
				<li class="fieldcontain list-group-item">
					<span id="description-label" class="property-label"><g:message code="product.description.label" default="Description" /></span>
					:
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${productInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productInstance, action:'delete']" method="DELETE" class="ml-5">
				<fieldset class="buttons">
					<g:link class="edit btn btn-primary mt-2" action="edit" resource="${productInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger mt-2" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
