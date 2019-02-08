<%@ page import="grails_ecommerce.OrderEcommerce" %>

<div class="fieldcontain ${hasErrors(bean: orderEcommerceInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="orderEcommerce.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" name="status" from="${orderEcommerceInstance.constraints.status.inList}" required="" value="${orderEcommerceInstance?.status}" valueMessagePrefix="orderEcommerce.status"/>

</div>

