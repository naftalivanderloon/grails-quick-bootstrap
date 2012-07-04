package testapp;

import java.text.SimpleDateFormat

import org.springframework.beans.PropertyEditorRegistrar
import org.springframework.beans.PropertyEditorRegistry

public class CustomPropertyEditorRegistrar implements PropertyEditorRegistrar {
	def messageSource
	private final log = org.apache.commons.logging.LogFactory.getLog(CustomPropertyEditorRegistrar)

	@Override
	public void registerCustomEditors(PropertyEditorRegistry registry) {

		final String pattern = "${messageSource.getMessage('default.date.format.short',null,Locale.getDefault())}"
		final dateFormat = new SimpleDateFormat(pattern)

		println "Registring custom editor for dates, locale:${Locale.getDefault().getLanguage()}-${Locale.getDefault().getCountry()}, pattern:${pattern}"

		registry.registerCustomEditor(Date.class, new CalendarEditor(dateFormat, false))
	}
}
