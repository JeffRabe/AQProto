<%@ page import="edq.presales.aq.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="question.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="question" required="" value="${questionInstance?.question}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="question.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${questionInstance.constraints.type.inList}" required="" value="${questionInstance?.type}" valueMessagePrefix="question.type"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'solution', 'error')} required">
	<label for="solution">
		<g:message code="question.solution.label" default="Solution" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solution" name="solution.id" from="${edq.presales.aq.Solution.list()}" optionKey="id" required="" value="${questionInstance?.solution?.id}" class="many-to-one"/>

</div>

