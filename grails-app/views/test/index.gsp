<!doctype html>
<html>
<head>
<title><g:message code="test.index.welcome" /></title>
<meta name="layout" content="bootstrap">
<r:require modules="test_index"/>
<r:script>
	// we can add and override server side rendered messages to the global i18n
	i18n['language']="${grailsApplication.config.app.language}"
	
	i18n['remoteselect2.placeholder'] = <g:message code="test.index.js.remoteselect2.placeholder" />
	i18n['remoteselect2.noresults'] = <g:message code="test.index.js.remoteselect2.noresults" />
	i18n['remoteselect2.minimumcharacters'] = <g:message code="test.index.js.remoteselect2.minimumcharacters" args="[3]"/>

	console.log("i18n: default.message = "+i18n['default.message']); 
	console.log("i18n: default.message.overridden = "+i18n['default.message.overridden']); 
	console.log("i18n: application.nl.specific.message = "+i18n['application.nl.specific.message']); 
	console.log("i18n: application.page.specific.message = "+i18n['application.page.specific.message']); 
	console.log("i18n: test/index.gsp specific message, server side rendered: language: "+i18n['language']); 
</r:script>
</head>
<body>
	<h2><g:message code="test.index.welcome" /></h2><br/>
	<ul>
		<li>See: twitter-bootstrap <a href="http://twitter.github.com/bootstrap/index.html">http://twitter.github.com/bootstrap/index.html</a></li>
		<li>See: datejs <a href="http://www.datejs.com/">http://www.datejs.com/</a></li>
		<li>See: bootstrap-datepicker <a href="http://www.eyecon.ro/bootstrap-datepicker">http://www.eyecon.ro/bootstrap-datepicker/</a></li>
		<li>See: Jquery validation <a href="http://docs.jquery.com/Plugins/Validation">http://docs.jquery.com/Plugins/Validation</a> <a href="http://bassistance.de/jquery-plugins/jquery-plugin-validation/">http://bassistance.de/jquery-plugins/jquery-plugin-validation/</a></li>
		<li>See: select2 <a href="https://github.com/ivaynberg/select2">https://github.com/ivaynberg/select2</a></li>
	</ul>
	
	<form id="testForm" class="form-horizontal" action="/testApp/test/save">
		<fieldset>
			<div class="control-group">
				<label class="control-label" for="datepicker"><g:message code="test.index.datepicker.label" /></label>
			<div class="controls">
					<div class="input-append date required datepicker" id="datepicker"
						data-date="" date-autoclose="true"
						data-date-format="${message(code:'default.date.format.short')}">
						<input class="span2 required date" type="text" name="date1"><span
							class="add-on"><i class="icon-calendar"></i></span>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><g:message code="test.index.datefield.label" /></label>
				<div class="controls">
					<div class="input-append date">
						<input class="span2 date" type="text" name="date2"><span
							class="add-on"><i class="icon-calendar"></i></span>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="select2"><g:message code="test.index.select.label" /></label>
				<div class="controls">
					<div>
						<select id="select2" style="width: 300px" class="" name="state1"><option
								value="AL">Alabama</option>
							<option value="AK">Alaska</option>
							<option value="AZ">Arizona</option>
							<option value="AR">Arkansas</option>
							<option value="CA">California</option>
							<option value="CO">Colorado</option>
							<option value="CT">Connecticut</option>
							<option value="DE">Delaware</option>
							<option value="FL">Florida</option>
							<option value="GA">Georgia</option>
							<option value="HI">Hawaii</option>
							<option value="ID">Idaho</option>
							<option value="IL">Illinois</option>
							<option value="IN">Indiana</option>
							<option value="IA">Iowa</option>
							<option value="KS">Kansas</option>
							<option value="KY">Kentucky</option>
							<option value="LA">Louisiana</option>
							<option value="ME">Maine</option>
							<option value="MD">Maryland</option>
							<option value="MA">Massachusetts</option>
							<option value="MI">Michigan</option>
							<option value="MN">Minnesota</option>
							<option value="MS">Mississippi</option>
							<option value="MO">Missouri</option>
							<option value="MT">Montana</option>
							<option value="NE">Nebraska</option>
							<option value="NV">Nevada</option>
							<option value="NH">New Hampshire</option>
							<option value="NJ">New Jersey</option>
							<option value="NM">New Mexico</option>
							<option value="NY">New York</option>
							<option value="NC">North Carolina</option>
							<option value="ND">North Dakota</option>
							<option value="OH">Ohio</option>
							<option value="OK">Oklahoma</option>
							<option value="OR">Oregon</option>
							<option value="PA">Pennsylvania</option>
							<option value="RI">Rhode Island</option>
							<option value="SC">South Carolina</option>
							<option value="SD">South Dakota</option>
							<option value="TN">Tennessee</option>
							<option value="TX">Texas</option>
							<option value="UT">Utah</option>
							<option value="VT">Vermont</option>
							<option value="VA">Virginia</option>
							<option value="WA">Washington</option>
							<option value="WV">West Virginia</option>
							<option value="WI">Wisconsin</option>
							<option value="WY">Wyoming</option></select>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="select2"><g:message code="test.index.selectremoteservice.label" /></label>
				<div class="controls">
					<div>
						<input id="remoteselect2" type='hidden' style="width: 500px" class="" name="movie"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="select2"><g:message code="test.index.selectremote.label" /></label>
				<div class="controls">
					<div>
						<input id="remoteselect2-1" type='hidden' style="width: 200px" name="state2"/>
					</div>
				</div>
			</div>

			<div class="control-group ">
				<label class="control-label"><g:message code="test.index.alternatesizes.label" /></label>
				<div class="controls docs-input-sizes">
					<input name="alternate1" class="input-large required" type="text" placeholder=".input-large" required>
					<input name="alternate2" class="input-small" type="text" placeholder=".input-small">
					<input name="alternate3" class="input-medium required" type="text" placeholder=".input-medium  min=2 max=4" minlength="2" maxlength="4"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="prependedInput"><g:message code="test.index.prependedtext.label" /></label>
				<div class="controls">
					<div class="input-prepend">
						<span class="add-on">@</span><input class="span2 email"
							id="prependedInput" name="prepend" size="16" type="text"><span
							class="forerror"></span>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="appendedInput"><g:message code="test.index.appendedtext.label" /></label>
				<div class="controls">
					<div class="input-append">
						<input name="append" class="span2 number required" size="16"
							type="text"><span class="add-on">.00</span>
					</div>
					<span class="help-inline"><g:message code="test.index.appendedtext.help" /></span>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="appendedPrependedInput"><g:message code="test.index.appendedandprepended.label" /></label>
				<div class="controls">
					<div class="input-prepend input-append">
						<span class="add-on">$</span><input class="span2 number"
							name="appendedPrependedInput" size="16" type="text"><span
							class="add-on">.00</span>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="appendedInputButton"><g:message code="test.index.appendbutton.label" /></label>
				<div class="controls">
					<div class="input-append">
						<input class="span2" name="appendedInputButton" size="16"
							type="text">
						<button class="btn" type="button">Go!</button>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="appendedInputButtons"><g:message code="test.index.twobuttonappend.label" /></label>
				<div class="controls">
					<div class="input-append">
						<input class="span2" name="appendedInputButtons" size="16"
							type="text">
						<button class="btn" type="button">Search</button>
						<button class="btn" type="button">Options</button>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inlineCheckboxes"><g:message code="test.index.inlinecheckboxes.label" /></label>
				<div class="controls">
					<label class="checkbox inline"> <input type="checkbox"
						name="inlineCheckbox1" value="option1"> 1
					</label> <label class="checkbox inline"> <input type="checkbox"
						name="inlineCheckbox2" value="option2"> 2
					</label> <label class="checkbox inline"> <input type="checkbox"
						name="inlineCheckbox3" value="option3"> 3
					</label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="optionsCheckboxList"><g:message code="test.index.checkboxes.label" /></label>
				<div class="controls">
					<label class="checkbox"> <input type="checkbox"
						name="optionsCheckboxList1" value="option1"> <g:message code="test.index.checkboxes.option1.label" />
					</label> <label class="checkbox"> <input type="checkbox"
						name="optionsCheckboxList2" value="option2"> <g:message code="test.index.checkboxes.option2.label" />
					</label> <label class="checkbox"> <input type="checkbox"
						name="optionsCheckboxList3" value="option3"> <g:message code="test.index.checkboxes.option3.label" />
					</label>
					<p class="help-block">
						<strong>Note:</strong> <g:message code="test.index.checkboxes.help" />
					</p>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label"><g:message code="test.index.radiobuttons.label" /></label>
				<div class="controls">
					<label class="radio"> 
						<input type="radio"
						name="optionsRadios" id="optionsRadios1" value="option1"
						checked=""> <g:message code="test.index.radiobuttons.option1.label" />
					</label> 
					<label class="radio"> <input type="radio"
						name="optionsRadios" id="optionsRadios2" value="option2"> <g:message code="test.index.radiobuttons.option2.label" />
					</label>
				</div>
			</div>
			<div class="form-actions">
				<button id="saveForm" type="submit" class="btn btn-primary"><g:message code="test.index.save.label" /></button>
				<button class="btn"><g:message code="test.index.cancel.label" /></button>
			</div>
		</fieldset>
	</form>
</body>
</html>