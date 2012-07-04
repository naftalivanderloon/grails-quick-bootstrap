<!-- all bean properties of type String -->
<!-- if the property is named email use a specific input, in this case it's overridden by person/email/_input.gsp -->
<g:if test="${property=='email' }">
	<div class="input-prepend">
		<span class="add-on"><i class="icon-envelope"></i></span><%
	def attrs = [type: 'email', name: property, value: value]
	if (required) attrs.required = ''
	out << g.field(attrs)
	%>
	</div>	
</g:if>
<g:else>
<div class="input <%=required?'required':'' %>">
	<%
	def attrs = [type: 'text', name: property, value: value, class:css]
	//if (required) attrs.required = ''
	out << g.field(attrs)
	%>
</div>
</g:else>