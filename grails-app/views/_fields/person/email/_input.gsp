<div class="input-prepend">
	<span class="add-on"><i class="icon-envelope"></i></span><%
	def attrs = [type: 'email', name: property, value: value, placeholder:'name@email.com']
	if (required) attrs.required = ''
	out << g.field(attrs)
%>
</div>