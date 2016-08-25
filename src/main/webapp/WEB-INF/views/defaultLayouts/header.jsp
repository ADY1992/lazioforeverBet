<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>lazioforeverBet</title>
	<link href="<c:url value='/resources/css/app.css' />"  rel="stylesheet"></link> 
	<link href="<c:url value='/resources/css/normalize.css' />" rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>
 
<body>
	<div id="header">
		<!-- Defining the header section of the page with the appropriate tag -->

		<img src="<c:url value="/resources/img/header.jpg"/>" />

		<ul id="menu">
			<li><a href="#">Home</a></li>
			<li><a href="#">Categories</a>
				<ul>
					<li><a href="#">CSS</a></li>
					<li><a href="#">Graphic design</a></li>
					<li><a href="#">Development tools</a></li>
					<li><a href="#">Web design</a></li>
				</ul></li>
			<li><a href="#">Work</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Contact</a></li>
		</ul>

	</div>
</body>
</html>

