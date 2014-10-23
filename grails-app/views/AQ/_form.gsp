<%@ page import="edq.presales.aq.AQ" %>



<div class="fieldcontain ${hasErrors(bean: AQInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="AQ.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="name" cols="40" rows="5" maxlength="500" required="" value="${AQInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: AQInstance, field: 'productName', 'error')} required">
	<label for="productName">
		<g:message code="AQ.productName.label" default="Product Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="productName" required="" value="${AQInstance?.productName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: AQInstance, field: 'questions', 'error')} required">
	<label for="questions">
		<g:message code="AQ.questions.label" default="Questions" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

