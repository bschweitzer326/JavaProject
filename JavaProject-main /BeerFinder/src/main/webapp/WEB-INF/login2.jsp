<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.6.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/login.css">
<script type="text/javascript" src="../js/app.js"></script>
</head>

<body>

	<p><c:out value="${please}"></c:out></p>
	 <section class="login-dark">
	           
            <a class="forgot" href="/register">New User? Create and account.</a>
            
            <a href="http://localhost:8080/login/oauth2/code/google" class="list-group-item "><span class="auth-sprite google-logo  retina "></span><span class="auth-provider-text">Sign in with Google</span></a>
 
    </section>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js">
    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.bundle.min.js">
    </script>

</body>
</html>