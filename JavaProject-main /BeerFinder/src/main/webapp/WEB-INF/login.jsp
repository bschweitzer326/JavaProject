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
	 
        <form action="/login" method="post">      
			
            <h2 class="sr-only">Login Form</h2>
			<p class="text-danger"><c:out value="${logerr}"></c:out></p>
			
            <div class="illustration">
                <i class="icon ion-ios-locked-outline"></i>
            </div>
            
            <div class="form-group">
            	<label for="email">Email:</label>
                <input class="form-control" type="email" name="email" placeholder="Email">
            </div>

            <div class="form-group">
            	<label for="password">Password:</label>
                <input class="form-control" type="password" name="password" placeholder="Password">
            </div>

            <div class="form-group">
                <button class="btn btn-primary btn-block" type="submit">Log In</button>
            </div>
                       
            <a class="forgot" href="/register">New User? Create and account.</a>

            <!-- <a class="forgot" href="#">Forgot your email or password?</a> -->
            
        </form>

    </section>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js">
    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.bundle.min.js">
    </script>

</body>
</html>