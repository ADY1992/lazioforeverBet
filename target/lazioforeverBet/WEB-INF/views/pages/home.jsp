<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link href="<c:url value='/resources/css/app.css' />"  rel="stylesheet"></link> 

	<link href="<c:url value='/resources/css/normalize.css' />" rel="stylesheet"></link>
</head>
<body>
<div class="section" id="page">
		<jsp:include page="/WEB-INF/views/defaultLayouts/header.jsp"/> 

		<c:url var="homePage" value="/home" />
			<form:form action="${homePage}"  method="POST" >
				<%-- <h2>Log In</h2>
				${loginform.userName} 
				${loginform.password}  --%>
		</form:form>
	</div>
</body>
</html> 