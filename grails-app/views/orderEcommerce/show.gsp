
<%@ page import="grails_ecommerce.OrderEcommerce" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminLayout">
		<g:set var="entityName" value="${message(code: 'orderEcommerce.label', default: 'OrderEcommerce')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-orderEcommerce" class="content scaffold-show" role="main">
			<h1 class="ml-5"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list orderEcommerce list-group ml-5">
			
				<g:if test="${orderEcommerceInstance?.name}">
				<li class="fieldcontain list-group-item">
					<span id="name-label" class="property-label"><g:message code="orderEcommerce.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${orderEcommerceInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderEcommerceInstance?.email}">
				<li class="fieldcontain list-group-item">
					<span id="email-label" class="property-label"><g:message code="orderEcommerce.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${orderEcommerceInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderEcommerceInstance?.mobileNumber}">
				<li class="fieldcontain list-group-item">
					<span id="mobileNumber-label" class="property-label"><g:message code="orderEcommerce.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${orderEcommerceInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderEcommerceInstance?.phoneNumber}">
				<li class="fieldcontain list-group-item">
					<span id="phoneNumber-label" class="property-label"><g:message code="orderEcommerce.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${orderEcommerceInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderEcommerceInstance?.address}">
				<li class="fieldcontain list-group-item">
					<span id="address-label" class="property-label"><g:message code="orderEcommerce.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${orderEcommerceInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderEcommerceInstance?.productName}">
				<li class="fieldcontain list-group-item">
					<span id="productName-label" class="property-label"><g:message code="orderEcommerce.productName.label" default="Product Name" /></span>
					
						<span class="property-value" aria-labelledby="productName-label"><g:link controller="product" action="show" id="${orderEcommerceInstance?.productName?.id}">${orderEcommerceInstance?.productName?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderEcommerceInstance?.status}">
				<li class="fieldcontain list-group-item">
					<span id="status-label" class="property-label"><g:message code="orderEcommerce.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${orderEcommerceInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orderEcommerceInstance?.dateOfOrder}">
				<li class="fieldcontain list-group-item">
					<span id="dateOfOrder-label" class="property-label"><g:message code="orderEcommerce.dateOfOrder.label" default="Date Of Order" /></span>
					
						<span class="property-value" aria-labelledby="dateOfOrder-label"><g:formatDate date="${orderEcommerceInstance?.dateOfOrder}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:orderEcommerceInstance, action:'delete']" method="DELETE" class="mt-2 ml-5">
				<fieldset class="buttons">
					<g:link class="edit btn btn-primary" action="edit" resource="${orderEcommerceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
