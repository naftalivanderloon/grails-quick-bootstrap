<%@ page import="org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes" %>
<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title><g:layoutTitle default="${meta(name: 'app.name')}"/></title>
		<meta name="description" content="${meta(name: 'app.description')}">
		<meta name="author" content="${meta(name: 'app.author')}">

		<meta name="viewport" content="initial-scale = 1.0">

		<!-- HTML5 shim, for IE6-8 support of HTML elements -->
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<r:require modules="application_${grailsApplication.config.app.language}"/> <!-- you could set the language in the principal end get it here -->

		<!-- fav and touch icons -->
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}"><%--
		<link rel="apple-touch-icon" sizes="72x72" href="${resource(dir: 'images', file: 'apple-touch-icon-72x72.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-114x114.png')}">

		--%>
		<r:layoutResources/>
		<g:layoutHead/>
	</head>

	<body>

		<nav class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container-fluid">
					
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					
					<a class="brand" href="${createLink(uri: '/')}">${meta(name: 'app.name')}</a>

					<div class="nav-collapse">
						<ul class="nav">							
							<li class="<%= request.forwardURI == "${createLink(uri: '/')}" ? 'active' : '' %>"><a href="${createLink(uri: '/')}"><i class="icon-home icon-white"></i> Home</a></li>
							<%--<sec:ifLoggedIn>
								--%><g:render template="/shared/menu" />
							<%--</sec:ifLoggedIn>
						--%></ul>
					</div>
				</div>
			</div>
		</nav>

		<div class="container-fluid">
			<g:layoutBody/>

			<hr>

			<footer>
				<p>&copy; Company 2011</p>
			</footer>
		</div>

		<r:layoutResources/>

	</body>
</html>