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
			Caf&eacute; Colibr&iacute; - Login
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
				<div>
					<div class="container-fluid">
						<div class="col-md-offset-4 col-md-4">
							<div class="panel panel-default">
								<div class="panel-heading text-center">
									<label class="control-label pull-middle">Iniciar Sesi&oacute;n</label>
								</div>
								<div class="panel-body">
									<form class="form-signin" name="loginForm" action="<c:url value="/j_spring_security_check" />" method="POST">
										<c:if test="${errorMessage!=null}">					
											<div class="form-group">
												<div class="alert alert-danger alert-error">
													<a href="#" class="close" data-dismiss="alert">&times;</a>
													<strong><span class="glyphicon glyphicon-ban-circle"></span></strong>
													${errorMessage}
												</div>	
											</div>				
										</c:if>
										
										<c:if test="${logoutMessage!=null}">					
											<div class="form-group">
												<div class="alert alert-success">
													<a href="#" class="close" data-dismiss="alert">&times;</a>
													<strong><span class="glyphicon glyphicon-ok-circle"></span></strong>
													${logoutMessage}
												</div>	
											</div>				
										</c:if>
										
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon" id="basic-addon1">
													<span class="glyphicon glyphicon-user"></span>
												</span>
												<input type="text" name="j_username" class="form-control input-sm" 
												placeholder="Usuario" autofocus>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon" id="basic-addon1">
													<span class="glyphicon glyphicon-lock"></span>
												</span>
												<input type="password" name="j_password" class="form-control input-sm" 
												placeholder="Password">
											</div>
										</div>
										<div class="col-md-offset-4 col-md-4 col-sm-offset-4 col-sm-4 col-xs-offset-4 col-xs-4">
											<button class="btn btn-md btn-primary" type="submit">Aceptar</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					
				</div>
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