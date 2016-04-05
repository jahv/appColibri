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
		<tiles:useAttribute id="icon" name="icon"/>
		<link rel="shortcut icon" href="<%=request.getContextPath()%>${icon}" type="image/x-icon" />
		
		<!-- CSS -->
	    <tiles:useAttribute id="styles" name="styles" classname="java.util.List" />
		<c:forEach var="style" items="${styles}">
			<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%><tiles:insertAttribute value='${style}' flush='true' />" media="screen"/>
		</c:forEach>
		
		<!-- TITLE -->
		<title>
			<tiles:useAttribute id="title" name="title" ignore="true"/>
			Caf&eacute; Colibr&iacute;  
			<c:if test="${title != ''}">
				- ${title}
			</c:if>
		</title>
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
	        
	</head>
	<body data-ng-app="appColibri">
		<header>
				<tiles:insertAttribute name="header" />
		</header>
		<div>
			<tiles:insertAttribute name="menu" ignore="true"/>
		</div>
		<div id="appColibri_content" class="container-fluid col-md-12 col-sm-12 col-xs-12">
			<div class="row-fluid">
				<div>
					<tiles:insertAttribute name="body" />
				</div>
			</div>
			<tiles:insertAttribute name="footer" />
		</div>
		
		<!-- BASE JS -->
		<tiles:useAttribute id="jquery" name="jquery"/>
		<c:if test="${jquery != ''}">
			<script type="text/javascript" src="<%=request.getContextPath()%>${jquery}"></script>
		</c:if>
		
		<tiles:useAttribute id="bootstrapt" name="bootstrapt"/>
		<c:if test="${bootstrapt != ''}">
		<script type="text/javascript" src="<%=request.getContextPath()%>${bootstrapt}"></script>
		</c:if>
		
		<tiles:useAttribute id="angular" name="angular"/>
		<c:if test="${angular != ''}">
			<script type="text/javascript" src="<%=request.getContextPath()%>${angular}"></script>
		</c:if>
		
		<tiles:useAttribute id="angularui" name="angularui"/>
		<c:if test="${angularui != ''}">
			<script type="text/javascript" src="<%=request.getContextPath()%>${angularui}"></script>
		</c:if>
		
		<!-- CUSTOM JS -->
		<tiles:useAttribute id="scripts" name="scripts" classname="java.util.List" />
		<c:if test="${not empty scripts}">
			<c:forEach var="script" items="${scripts}">
				<script type="text/javascript" src="<%=request.getContextPath()%><tiles:insertAttribute value='${script}' flush='true' />"></script>
			</c:forEach>
		</c:if>
	</body>
</html>