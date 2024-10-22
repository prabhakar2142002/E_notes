<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}
.form-container {
    width: 300px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    border-radius: 5px;
}
.form-container h2 {
    text-align: center;
    margin-bottom: 20px;
}
.form-container label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}
.form-container input[type="text"],
.form-container input[type="password"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
}
.form-container input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #5cb85c;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
.form-container input[type="submit"]:hover {
    background-color: #4cae4c;
}
</style>
<%@include file="all_components/allcss.jsp"%>
</head>
<body>
<%@include file="all_components/navbar.jsp"%>
<div class="container-fluid" style="background-image: linear-gradient(to right top, #061d5a, #004a7a, #00717d, #509479, #a5b386);height:580px">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card mt-3">
<div class="card-header text-center" style="background-color: purple; color:white;" >
<i class="fa fa-sign-in" aria-hidden="true"></i>
<h4>Login</h4>
</div>


<%

String invalidMsg=(String)session.getAttribute("login-falied");

if(invalidMsg!=null) {
	%>
	<div class="alert alert-danger" role="alert">
	<%=invalidMsg%>
	</div>

	
	
	
	<%
	
	session.removeAttribute("login-falied");
}

%>





<div class="card-body">


<form action="login" method="post">
<div class="form-group">
    <label for="username">Username</label>
    <input type="text" id="username" name="username" class="form-control" placeholder="Enter Username" required>
</div>
<div class="form-group">
    <label for="password">Password</label>
    <input type="password" id="password" name="password" class="form-control" placeholder="Enter Password" required>
</div>
<input type="submit" value="Login" class="btn btn-primary">
</form>
</div>
</div>
</div>
</div>
</div>
<%@include file="all_components/footer.jsp"%>
</body>
</html>
