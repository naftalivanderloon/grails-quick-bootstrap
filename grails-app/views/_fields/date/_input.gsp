<div class="input-append date required datepicker" id="datepicker" date-autoclose="true" data-date-format="${message(code:'default.date.format.short')}">
	<%
	def attrs = [type: 'text', name: property, value: "${g:formatDate(date:value, format:message(code:'default.date.format.short'))}"]
	if (required) attrs.required = ''
	out << g.field(attrs)
	%><span class="add-on"><i class="icon-calendar"></i></span>
</div> 