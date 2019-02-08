
<%@ page import="grails_ecommerce.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminLayout">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul>

				<li>
					<g:link class="create" action="create" style="color: white">
						<span class="btn btn-success mt-4">New User</span>
					</g:link>
				</li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1 class="ml-5"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user list-group ml-5">
			
				<g:if test="${userInstance?.username}">
				<li class="fieldcontain list-group-item">
					<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
					:
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain list-group-item">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					:
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.name}">
				<li class="fieldcontain list-group-item">
					<span id="name-label" class="property-label"><g:message code="user.name.label" default="Name" /></span>
					:
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.role}">
				<li class="fieldcontain list-group-item">
					<span id="role-label" class="property-label"><g:message code="user.role.label" default="Role" /></span>
					:
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${userInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<li class="fieldcontain list-group-item">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
					:
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.address}">
				<li class="fieldcontain list-group-item">
					<span id="address-label" class="property-label"><g:message code="user.address.label" default="Address" /></span>
					:
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${userInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE" class="ml-5 mt-2">
				<fieldset class="buttons">
					<g:link class="edit btn btn-success" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
