
<%@ page import="testapp.Person" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="bootstrap"/>
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li>
							<g:link class="list" action="list">
								<i class="icon-list"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
						</li>
						<li>
							<g:link class="create" action="create">
								<i class="icon-plus"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="span9">

				<div class="page-header">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<dl>
				
					<g:if test="${personInstance?.firstName}">
						<dt><g:message code="person.firstName.label" default="First Name" /></dt>
						
							<dd><g:fieldValue bean="${personInstance}" field="firstName"/></dd>
						
					</g:if>
				
					<g:if test="${personInstance?.lastName}">
						<dt><g:message code="person.lastName.label" default="Last Name" /></dt>
						
							<dd><g:fieldValue bean="${personInstance}" field="lastName"/></dd>
						
					</g:if>
				
					<g:if test="${personInstance?.email}">
						<dt><g:message code="person.email.label" default="Email" /></dt>
						
							<dd><g:fieldValue bean="${personInstance}" field="email"/></dd>
						
					</g:if>
				
					<g:if test="${personInstance?.dateOfBirth}">
						<dt><g:message code="person.dateOfBirth.label" default="Date Of Birth" /></dt>
						
							<dd> <g:formatDate format="${message(code:"default.date.format.short")}" date="${personInstance?.dateOfBirth}" /></dd>
						
					</g:if>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${personInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${personInstance?.id}">
							<i class="icon-pencil"></i>
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
						<button class="btn btn-danger" type="submit" name="_action_delete">
							<i class="icon-trash icon-white"></i>
							<g:message code="default.button.delete.label" default="Delete" />
						</button>
					</div>
				</g:form>

			</div>

		</div>
	</body>
</html>
