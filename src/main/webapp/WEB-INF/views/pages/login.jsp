<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login In</title>
	<link href="<c:url value='/resources/css/login.css' />"  rel="stylesheet"></link>
	<link href="<c:url value='/resources/css/normalize.css' />" rel="stylesheet"></link>
	 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {	

	$("#loginId").click(function() {
		$("#loginIdForm").submit();
	});
}); 
</script>
</head>
<body>	
	<div class="login">
	<c:url var="loginUrl" value="/home" />
	<form:form action="${loginUrl}" commandName="loginform"  method="POST" id="loginIdForm">
			<h2>Log In</h2>
			<fieldset>
				<form:input path="userName" placeholder="Username" />
				<form:password path="password" placeholder="Password" />
			</fieldset>
	</form:form>
	
	<button id="loginId">Log In</button>
	<div class="utilities">
		<a href="#">Forgot Password?</a> <a href="#">Sign Up &rarr;</a>
	</div>
</div> 
</body>
</html>
