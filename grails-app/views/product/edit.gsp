<%@ page import="grails_ecommerce.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminLayout">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul>


				<li><g:link class="create" action="create">
					<button class="btn btn-success mt-4">New Product</button>
				</g:link></li>
			</ul>
		</div>
		<div id="edit-product" class="content scaffold-edit" role="main">
			<h1 class="ml-5"><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${productInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${productInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:productInstance, action:'update']" method="PUT" class="form-group col-md-5" enctype="multipart/form-data">
				<g:hiddenField name="version" value="${productInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-primary mt-2" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
