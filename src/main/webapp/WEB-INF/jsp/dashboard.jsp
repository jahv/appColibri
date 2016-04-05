<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<h1>DASHBOARD</h1>
${authentication}

${pageContext.request.userPrincipal.name}
<hr>
${pageContext.request.userPrincipal}

<hr>
<sec:authentication property="principal" />