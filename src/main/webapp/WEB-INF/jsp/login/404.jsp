<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		
		<!-- ICON -->
		<link rel="shortcut icon" href="<%=request.getContextPath()%>/images/colibri.png" type="image/x-icon" />
		
		<!-- CSS -->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.min.css" media="screen"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/appColibri.css" media="screen"/>
		
		<!-- TITLE -->
		<title>
			Caf&eacute; Colibr&iacute;
		</title>
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
	        
	</head>
	<body>
		<header>
				<nav class="navbar navbar-default margin-bottom-0 break-line">
					<div class="container-fluid">
						<div class="navbar-header">
							<a class="navbar-brand" href="<c:url value="/"/>"> 
								<img class="media-object small width-50" src="<c:url value="/images/md_cafe_colibri.png"/>" />
							</a>
						</div>
					</div>
				</nav>
		</header>
		
		<div id="appColibri_content" class="container-fluid col-md-12 col-sm-12 col-xs-12" data-ng-app="">
			<div class="row-fluid">
				<h1>Not Found</h1>
			</div>
			<footer id="pricing_footer" class="col-sm-12 col-xs-12">
				<p>Copyright Caf&eacute; Colibr&iacute;, Todos los derechos reservados</p>
			</footer>
		</div>
		
		<!-- BASE JS -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-3.3.5.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/angular-1.4.7.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/angular-ui-bootstrap-0.14.3.min.js"></script>
		
		<!-- CUSTOM JS -->
	</body>
</html>