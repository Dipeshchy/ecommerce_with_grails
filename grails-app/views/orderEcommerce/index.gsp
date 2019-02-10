
<%@ page import="grails_ecommerce.OrderEcommerce" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminLayout">
		<g:set var="entityName" value="${message(code: 'orderEcommerce.label', default: 'OrderEcommerce')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-orderEcommerce" class="content scaffold-list" role="main">
			<h1 class="ml-5 mt-3"><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="ml-5 table table-cell">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'orderEcommerce.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'orderEcommerce.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="mobileNumber" title="${message(code: 'orderEcommerce.mobileNumber.label', default: 'Mobile Number')}" />
					
						<g:sortableColumn property="phoneNumber" title="${message(code: 'orderEcommerce.phoneNumber.label', default: 'Phone Number')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'orderEcommerce.address.label', default: 'Address')}" />
					
						<th><g:message code="orderEcommerce.productName.label" default="Product Name" /></th>
						<th>Price</th>
						<th>Date Of Order</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${orderEcommerceInstanceList}" status="i" var="orderEcommerceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<g:set var="productId" value="${orderEcommerceInstance.productName}"></g:set>
						<td>${fieldValue(bean: orderEcommerceInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: orderEcommerceInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: orderEcommerceInstance, field: "mobileNumber")}</td>
					
						<td>${fieldValue(bean: orderEcommerceInstance, field: "phoneNumber")}</td>
					
						<td>${fieldValue(bean: orderEcommerceInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: orderEcommerceInstance, field: "productName")}</td>
						<td>${grails_ecommerce.Product.findByProductName(productId).price}</td>
						<td>${fieldValue(bean: orderEcommerceInstance, field: "dateOfOrder")}</td>
						<td id="orderStatus">${fieldValue(bean: orderEcommerceInstance, field: "status")}</td>
						<td><g:link action="edit" id="${orderEcommerceInstance.id}">Change Status</g:link></td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orderEcommerceInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
