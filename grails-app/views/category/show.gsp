
<%@ page import="grails_ecommerce.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminLayout">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul>


				<li>
					<g:link class="create" action="create">
						<span class="btn btn-success mt-4">New Category</span>
					</g:link></li>
			</ul>
		</div>
		<div id="show-category" class="content scaffold-show" role="main">
			<h1 class="ml-5"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list category ml-5 list-group">
			
				<g:if test="${categoryInstance?.categoryName}">
				<li class="fieldcontain list-group-item">
					<span id="categoryName-label" class="property-label"><g:message code="category.categoryName.label" default="Category Name" /></span>
					:
						<span class="property-value" aria-labelledby="categoryName-label"><g:fieldValue bean="${categoryInstance}" field="categoryName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoryInstance?.description}">
				<li class="fieldcontain list-group-item">
					<span id="description-label" class="property-label"><g:message code="category.description.label" default="Description" /></span>
					:
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${categoryInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:categoryInstance, action:'delete']" method="DELETE" class="ml-5">
				<fieldset class="buttons">
					<g:link class="edit btn btn-primary mt-2" action="edit" resource="${categoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger mt-2" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
