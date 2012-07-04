def dev = grails.util.GrailsUtil.isDevelopmentEnv()
def cssFile = "bootstrap/bootstrap.css"
def cssminFile = "bootstrap/bootstrap.min.css"

modules = {

	'bootstrap-css' {
		resource url:[dir: 'css', file: (dev ? cssFile : cssminFile)], disposition: 'head', exclude:'minify'
	}

	'bootstrap-responsive-css' {
		dependsOn 'bootstrap-css'
		resource url:[dir: 'css', file: (dev ? 'bootstrap/bootstrap-responsive.css' : 'bootstrap-responsive.min.css')], disposition: 'head', exclude:'minify'
	}

	'bootstrap-alert' {
		dependsOn 'jquery'
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-alert.js']
	}

	'bootstrap-dropdown' {
		dependsOn 'jquery'
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-dropdown.js']
	}

	'bootstrap-modal' {
		dependsOn 'jquery'
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-modal.js']
	}

	'bootstrap-popover' {
		dependsOn 'bootstrap-tooltip'
		dependsOn 'jquery'
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-popover.js']
	}

	'bootstrap-scrollspy' {
		dependsOn 'jquery'
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-scrollspy.js']
	}

	'bootstrap-tab' {
		dependsOn "jquery"
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-tab.js']
	}

	'bootstrap-tooltip' {
		dependsOn "jquery"
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-tooltip.js']
	}

	'bootstrap-button' {
		dependsOn "jquery"
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-button.js']
	}

	'bootstrap-carousel' {
		dependsOn "jquery"
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-carousel.js']
	}

	'bootstrap-typeahead' {
		dependsOn "jquery"
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-typeahead.js']
	}

	'bootstrap-collapse' {
		dependsOn "jquery"
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-collapse.js']
	}

	'bootstrap-transition' {
		dependsOn "jquery"
		resource url:[dir: 'js', file: 'bootstrap/bootstrap-transition.js']
	}

	'bootstrap-js' {
		dependsOn 'jquery'
		dependsOn 'bootstrap-transition,bootstrap-alert,bootstrap-dropdown,bootstrap-modal,bootstrap-scrollspy,bootstrap-tab,bootstrap-tooltip,bootstrap-popover,bootstrap-button,bootstrap-carousel,bootstrap-typeahead,bootstrap-collapse'
	}


	bootstrap {
		dependsOn 'bootstrap-css'
		dependsOn 'bootstrap-js'
	}

	/** application wide resources */
	application {
		dependsOn 'bootstrap-collapse'
		dependsOn 'bootstrap-responsive-css'

		resource url:'js/date.js'

		resource url: 'css/select2.css'
		resource url:'js/select2.js'

		resource url:'js/jquery.validate.js'
		resource url:'js/jquery.validate.bootstrap.js'

		resource url: 'css/datepicker.css'
		resource url:'js/bootstrap-datepicker.js'

		resource url: 'css/application.css'
		resource url: 'js/application.js' 
	}

	/** language specific resources */

	application_en { dependsOn 'application' }

	/** nl specific resources */
	application_nl {
		dependsOn 'application'

		resource url:'js/nl/date-nl-NL.js'
		resource url:'js/nl/jquery.validate.bootstrap.nl.js'
		resource url:'js/nl/application-nl.js'
	} 

	/** page specific resources */
	test_index {
		dependsOn 'application'

		resource url:'js/test-index.js'
	}
}
