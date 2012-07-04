(function() {
  console.log("Setting jquery validate messages NL");

  $.validator.messages = ({
    required: "mag niet leeg zijn",
    remote: 'needs to get fixed',
    email: 'is geen geldig email adres',
    url: 'is geen geldige URL',
    date: 'is geen geldige datum',
    dateISO: 'is geen geldige datum (ISO)',
    number: 'is geen geldig nummer',
    digits: 'moeten getallen zijn',
    creditcard: 'is geen geldig credit card numme',
    equalTo: 'is niet gelijk',
    accept: 'is not a value with a valid extension',
    maxlength: jQuery.validator.format('moet meer dan {0} letters zijn'),
    minlength: jQuery.validator.format('moet tenminste {0} letters zijn'),
    rangelength: jQuery.validator.format('moet tussen {0} en {1} lang zijn'),
    range: jQuery.validator.format('moet tussen {0} en {1} liggen'),
    max: jQuery.validator.format('moet kleiner of gelijk aan {0} zijn'),
    min: jQuery.validator.format('moet groter of gelijk dan {0} zijn')
  });

}).call(this);
