// i18n messages for javascripts
console.log("Init i18n script messages, default EN");
var i18n = {};
i18n['default.message']="test message for all languages"
i18n['default.message.overridden']="test message, default EN"

if (typeof jQuery !== 'undefined') {
	(function($) {
		
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});

		console.log("Init all datepickers, default EN");
		$('.datepicker').datepicker({
		    autoclose: true
		});
		
		jQuery.validator.addMethod(
		        "date",
		        function (value, element) {
		        	//console.log(Date.parse(value));
		            return this.optional(element) || Date.parse(value);
		        },
		        $.validator.messages.date
		    );
		
		//initialize form validation on all forms
		$('form').validate()
		
	})(jQuery);
}

