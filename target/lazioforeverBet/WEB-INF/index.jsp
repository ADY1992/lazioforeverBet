<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>lazioforeverBet</title>
	<link href="<c:url value='/resources/css/login.css' />"  rel="stylesheet"></link> 
	<link href="<c:url value='/resources/css/normalize.css' />" rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>
 
<body>	
	<div class="login">
		<h2>LazioforeverBet</h2>
		
		<a href="${pageContext.request.contextPath}/login">
    		<button>Log In</button>
		</a>
	</div>
</body>
</html>

