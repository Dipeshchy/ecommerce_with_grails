<%@ page import="grails_ecommerce.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productName', 'error')} required">
	<label for="productName">
		<g:message code="product.productName.label" default="Product Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="productName" maxlength="50" required="" value="${productInstance?.productName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="product.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="brand" required="" value="${productInstance?.brand}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="price" value="${fieldValue(bean: productInstance, field: 'price')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'discount', 'error')} required">
	<label for="discount">
		<g:message code="product.discount.label" default="Discount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="discount" value="${fieldValue(bean: productInstance, field: 'discount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="product.image.label" default="Image" />
		
	</label>
	<input type="file" name="imageFile" class="form-control">

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'categoryName', 'error')} required">
	<label for="categoryName">
		<g:message code="product.categoryName.label" default="Category Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoryName" name="categoryName.id" from="${grails_ecommerce.Category.list()}" optionKey="id" required="" value="${productInstance?.categoryName?.id}" class="many-to-one form-control"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'stock', 'error')} required">
	<label for="stock">
		<g:message code="product.stock.label" default="Stock" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="stock" type="number" value="${productInstance.stock}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		
	</label>
	<g:textField class="form-control" name="description" value="${productInstance?.description}"/>

</div>

