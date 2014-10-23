<%@ page import="edq.presales.aq.Solution" %>



<div class="fieldcontain ${hasErrors(bean: solutionInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="solution.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${solutionInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solutionInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="solution.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${edq.presales.aq.Product.list()}" optionValue="name" optionKey="id" required="" value="${solutionInstance?.product?.id}" class="many-to-one"/>

</div>

