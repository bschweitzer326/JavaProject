<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.6.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/profile.css">
<script type="text/javascript" src="../js/app.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <h4 class="navbar-brand">Beer Finder</h4>
		  
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Beer Categories</a>
		      </li>
		      <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Dropdown
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		          <a class="dropdown-item" href="#">Action</a>
		          <a class="dropdown-item" href="#">Another action</a>
		          <div class="dropdown-divider"></div>
		          <a class="dropdown-item" href="#">Something else here</a>
		        </div>
		      </li>
		   
		    </ul>
		    <a href="#"><i class='fas fa-map-marker-alt mr-4' style='font-size:30px;color:red'></i></a>
		<!--       one to direct to the login/reg page -->
	      	<a href="/account"><i class='fas fa-user-secret mr-4' style='font-size:30px;color:black'></i></a>
		    <!--   one to direct to a logged in users account setup -->
	       	<a href="/account"><i class='fas fa-user-secret mr-4' style='font-size:30px;color:black'></i></a>
	      	<a class="navbar-brand mr-4" href="logout">Log out</a>
		  </div>
		</nav>
		<div class="header">
			<h1>Your TapRoom</h1>
		</div>
		<div class="content">
			<div class="myform">
				<h3>Update Your TapRoom</h3>
				<form>
				  <div class="form-group">
				    <label>Category</label>
				    <select class="form-control" id="exampleFormControlSelect1">
				      <option>Taste List</option>
				      <option>Brands to Look At</option>
				      <option>Categories to Try</option>
				      <option>My Finds</option>
				      <option>My Brands</option>
				      <option>Never Again</option>
				    </select>
				  </div>
				  <div class="form-group">
				    <label>Enter Item</label>
				    <input type="text" class="form-control">
				  </div>
				  <input type="submit" class="btn btn-sm btn-dark" value="Update">
				</form>
			</div>
			<div class="lists">
			<div class="subcontent">
				<div class="list">
					<h4>Taste List:</h4>
					<div>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
					</div>
				</div>
				<div class="list">
					<h4>My Finds:</h4>
					<div>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
					</div>
				</div>
			</div>
			<div class="subcontent">
				<div class="list">
					<h4>Brands to Look At:</h4>
					<div>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
					</div>
				</div>
				<div class="list">
					<h4>My Brands:</h4>
					<div>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
					</div>
				</div>
			</div>
			<div class="subcontent">
				<div class="list">
					<h4>Categories to Try:</h4>
					<div>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
					</div>
				</div>
				<div class="list">
					<h4>Never Again:</h4>
					<div>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
						<p>Example</p>
					</div>
				</div>
			</div>
			</div>
		</div>
	</div>
</body>
</html>