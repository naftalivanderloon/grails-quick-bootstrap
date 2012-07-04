// page specific message
i18n['application.page.specific.message'] = "Page specific message"

function movieFormatResult(movie) {
	var markup = "<table class='movie-result'><tr>";
	if (movie.posters !== undefined && movie.posters.thumbnail !== undefined) {
		markup += "<td class='movie-image'><img src='"
				+ movie.posters.thumbnail + "'/></td>";
	}
	markup += "<td class='movie-info'><div class='movie-title'>" + movie.title
			+ "</div>";
	if (movie.critics_consensus !== undefined) {
		markup += "<div class='movie-synopsis'>" + movie.critics_consensus
				+ "</div>";
	} else if (movie.synopsis !== undefined) {
		markup += "<div class='movie-synopsis'>" + movie.synopsis + "</div>";
	}
	markup += "</td></tr></table>"
	return markup;
}

function movieFormatSelection(movie) {
	return movie.title;
}

$(document).ready(function() {
	
	$("#select2").select2();
	
	$("#remoteselect2").select2({
		placeholder : {
			title : i18n['remoteselect2.placeholder'],
			id : ""
		},
		minimumInputLength : 3,
		ajax : {
			url : "http://api.rottentomatoes.com/api/public/v1.0/movies.json",
			dataType : 'jsonp',
			data : function(term, page) {
				return {
					q : term, // search term
					page_limit : 10,
					apikey : "ju6z9mjyajq2djue3gbvv26t" // please do not use so this example keeps working
				};
			},
			results : function(data, page) {
				return {
					results : data.movies
				};
			}
		},
		formatResult : movieFormatResult,
		formatSelection : movieFormatSelection,
		formatNoMatches : function(term) {
			return i18n['remoteselect2.noresults']+term
		},
		formatInputTooShort : function(term, minLength) {
			return i18n['remoteselect2.minimumcharacters']
		}
	});

	$("#remoteselect2-1").select2({
		placeholder : "Selecteer een staat",
		formatNoMatches : function(term) {
			return "Geen resultaat"
		},
		minimumInputLength : 1,
		ajax : {
			url : "test/states.json",
			dataType : 'jsonp',
			data : function(term, page) {
				return {
					q : term
				};
			},
			results : function(data, page) {
				return {
					results : data
				};
			}
		},
		formatResult : function(data) {
			return data.name;
		},
		formatSelection : function(data) {
			return data.name;
		}
	});
	$("#testForm").validate();

	$("#saveForm").click(function(){
		console.log($("#testForm").valid())
		return true
	});
});
