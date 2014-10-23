
<%@ page import="edq.presales.aq.AQ" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'AQ.label', default: 'AQ')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-AQ" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-AQ" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'AQ.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="productName" title="${message(code: 'AQ.productName.label', default: 'Product Name')}" />
					
						<g:sortableColumn property="questions" title="${message(code: 'AQ.questions.label', default: 'Questions')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${AQInstanceList}" status="i" var="AQInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${AQInstance.id}">${fieldValue(bean: AQInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: AQInstance, field: "productName")}</td>
					
						<td>${fieldValue(bean: AQInstance, field: "questions")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${AQInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
