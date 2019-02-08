
<%@ page import="grails_ecommerce.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminLayout">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
		<div class="nav" role="navigation">
			<ul>

				<li><g:link class="create" action="create">
					<button class="btn btn-success mt-4">New Product</button>
				</g:link></li>
			</ul>
		</div>
		<div id="list-product" class="content scaffold-list" role="main">
			<h1 class="ml-5"><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-cell ml-5">
			<thead>
					<tr>
					
						<g:sortableColumn property="productName" title="${message(code: 'product.productName.label', default: 'Product Name')}" />
					
						<g:sortableColumn property="brand" title="${message(code: 'product.brand.label', default: 'Brand')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'product.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="discount" title="${message(code: 'product.discount.label', default: 'Discount')}" />
					
						<g:sortableColumn property="image" title="${message(code: 'product.image.label', default: 'Image')}" />
					
						<th><g:message code="product.categoryName.label" default="Category Name" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productInstanceList}" status="i" var="productInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "productName")}</g:link></td>
					
						<td>${fieldValue(bean: productInstance, field: "brand")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "discount")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "image")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "categoryName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
	</body>
</html>
