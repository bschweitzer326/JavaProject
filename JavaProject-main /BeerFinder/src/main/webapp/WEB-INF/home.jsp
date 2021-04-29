<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.6.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/home.css">
<script type="text/javascript" src="../js/app.js"></script>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	
		<div class="left">
			<!-- for links on the left side of the nav bar -->
		</div> 
		
		<div class="right">
		  
		  <a class="navbar-brand" href="logout">Log out</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		 </div>
	</nav>
	
	<div class="container">
		<h1>Welcome <c:out value="${user.firstName}"/> to the home page!</h1>
		<p class="text-success"><c:out value="${success}"/></p>
	</div>
</body>
</html>