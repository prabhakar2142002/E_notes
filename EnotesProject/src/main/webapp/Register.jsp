<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
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
.form-container input[type="tel"],
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
<i class="fa fa-user-plus" aria-hidden="true"></i>
<h4>Registration</h4>
</div>



<%   
String regMsg=(String)session.getAttribute("reg-succes");

if(regMsg!=null)
{
	%>
<div class="alert alert-success" role="alert">
<%= regMsg %>Login <a href="Login.jsp">Click here</a>

</div>

<%
	session.removeAttribute("reg-succes");
}

%>


<%   
String failMsg=(String)session.getAttribute("failed-msg");

if(failMsg!=null)
{
	%>
	<div class="alert alert-danger" role="alert">
	<%= failMsg %>
	</div>

<%
session.removeAttribute("failed-msg");	
}

%>









<div class="card-body">
<form action="register" method="post">
<div class="form-group">
    <label for="username">Username</label>
    <input type="text" id="username" name="username" class="form-control" placeholder="Enter Username" required>
</div>
<div class="form-group">
    <label for="phone">Phone Number</label>
    <input type="tel" id="phone" name="phone" class="form-control" placeholder="Enter Phone Number" required>
</div>
<div class="form-group">
    <label for="password">Password</label>
    <input type="password" id="password" name="password" class="form-control" placeholder="Enter Password" required>
</div>
<div class="form-group">
    <label for="confirmPassword">Confirm Password</label>
    <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Confirm Password" required>
</div>
<input type="submit" value="Register" class="btn btn-primary">
</form>
</div>
</div>




</div>
</div>



</div>
<%@include file="all_components/footer.jsp"%>
</body>
</html>