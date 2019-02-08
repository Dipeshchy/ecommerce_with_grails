
<%@ page import="grails_ecommerce.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="adminLayout">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul style="list-style-type: none">

				<li>
					<g:link class="create" action="create" >
						<span class="btn btn-success mt-4">New Category</span>
					</g:link>
				</li>
			</ul>
		</div>
		<div id="list-category" class="content scaffold-list" role="main">
			<h1 class="ml-5"><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-cell ml-5 ">
			<thead>
					<tr>
					
						<g:sortableColumn property="categoryName" title="${message(code: 'category.categoryName.label', default: 'Category Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'category.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "categoryName")}</g:link></td>
					
						<td>${fieldValue(bean: categoryInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${categoryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
