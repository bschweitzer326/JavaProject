<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.6.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/registration.css">
<script type="text/javascript" src="../js/app.js"></script>
</head>
<body>

	<section class="register-photo">
			
			<form:form action="/registration" method="post" modelAttribute="user">
										
                <h2 class="text-center"><strong>Create</strong> an account.</h2>

                <div class="form-group">
                	<form:errors class="text-danger" path="firstName"/>
                	<form:label path="firstName">First Name:</form:label>
                    <form:input class="form-control" type="text" path="firstName" placeholder="First Name"/>
                </div>

                <div class="form-group">
                	<form:errors class="text-danger" path="lastName"/>
                	<form:label path="lastName">Last Name:</form:label>
                    <form:input class="form-control" type="text" path="lastName" placeholder="Last Name"/>
                </div>

                <div class="form-group">
                	<form:errors class="text-danger" path="email"/>
                	<form:label path="email">Email:</form:label>
                    <form:input class="form-control" type="email" path="email" placeholder="Email"/>
                </div>

                <div class="form-group">
                	<form:errors class="text-danger" path="password"/>
                	<form:label path="password">Password:</form:label>
                    <form:input class="form-control" type="password" path="password" placeholder="Password"/>
                </div>

                <div class="form-group">
                	<form:errors class="text-danger" path="passwordConfirmation"/>
                	<form:label path="passwordConfirmation">Confirm:</form:label>
                    <form:input class="form-control" type="password" path="passwordConfirmation" placeholder="Password (confirm)"/>
                </div>

                <div class="form-group">
                	<input class="btn btn-primary btn-block" type="submit" value="Sign Up"/>
                </div>

                <a class="already" href="/login">You already have an account? Login here.</a>

            </form:form>
        
    </section>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js">
    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.bundle.min.js">
    </script>

</body>
</html>