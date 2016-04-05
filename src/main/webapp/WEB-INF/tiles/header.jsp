<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-default margin-bottom-0 break-line">
	<div class="container-fluid">
		<div class="navbar-header">
			<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#colibri-navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
			</sec:authorize>
			<a class="navbar-brand" href="<c:url value="/"/>"> 
				<img class="media-object small width-50" src="<c:url value="/images/md_cafe_colibri.png"/>" />
			</a>
			<h1 class="navbar-text"><tiles:insertAttribute name="title" ignore="true"/> </h1>
		</div>

		<sec:authorize access="hasAnyRole('ROLE_ADMIN')">
			<div class="collapse navbar-collapse" id="colibri-navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li id='profile_menu' class="dropdown">
						<a href="" class="dropdown-toggle" data-toggle="dropdown">
					    	<span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;
					    	<span id="userName_span">
					    		<sec:authentication property="principal" />&nbsp;&nbsp;
					    	</span>
					    	<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li id='logout_btn'><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</sec:authorize>
	</div>
</nav>