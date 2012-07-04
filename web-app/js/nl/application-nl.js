console.log("Set i18n messages to NL");
// override default messages
i18n['default.message.overridden']="test melding NL"

// specific message only NL
i18n['application.nl.specific.message']="Applicatie test melding NL specifiek"


console.log("Resetting all datepickers to NL");

$.fn.datepicker.dates['nl'] = {
	days : [ "Zondag", "Maandag", "Dinsdag", "Woensdag", "Donderdag",
			"Vrijdag", "Zaterdag", "Zondag" ],
	daysShort : [ "Zo", "Ma", "Di", "Wo", "Do", "Vr", "Za", "Zo" ],
	daysMin : [ "Zo", "Ma", "Di", "Wo", "Do", "Vr", "Za", "Zo" ],
	months : [ "Januari", "Februari", "Maart", "April", "Mei", "Juni", "Juli",
			"Augustus", "September", "Oktober", "November", "December" ],
	monthsShort : [ "Jan", "Feb", "Mar", "Apr", "Mei", "Jun", "Jul", "Aug",
			"Sep", "Okt", "Nov", "Dec" ]
};

// destroying current datepickers
$('.datepicker').data('datepicker', null);

// initializing 
$('.datepicker').datepicker({
	autoclose: true,
	language : 'nl'
});
