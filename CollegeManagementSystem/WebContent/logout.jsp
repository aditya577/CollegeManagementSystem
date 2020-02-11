<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout | Haldia Institute of Technology</title>

<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<link rel="stylesheet" type="text/css" href="css/login.css">

<style type="text/css">
p{
	font-size: 400%;
	color: red;
}
a{
	color:red;
}
h4{
	color: blue;
}
</style>

</head>
<body align="center">

<%
//to disbale going back to secure pages by Back-Button==========================================
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
//===============================================================================================
session.invalidate();
%>

		<div class="header">
			<br>
			<div class="logo">
				<a href="index.jsp">
					<img src="pics/haldia_logo.png" alt="logo">
				</a>
			</div>
				<br><br>	
		</div>

<!-- <br><br>

<a href="facultyLogin.jsp">Faculty</a>
<a href="studentLogin.jsp">Student</a>
<a href="adminLogin.jsp">Admin</a>

<br><br>

<a href="index.jsp">Home</a>
<a href="#">About</a>
<a href="#">Department</a>
<a href="#">Central Library</a>
<a href="#">Event Registration</a>
<a href="#">Study Resources</a>
<a href="#">Papers Published</a>
<a href="http://makautexam.net/" target="_blank">MAKAUT</a>
 -->
<br><br><br><br>
<b><p>Logged Out Successfully !!!</p></b>
<h4>You will be automatically redirected to Home Page, if not then <a href="index.jsp">click here</a></h4>

<% response.setHeader("Refresh", "0;url=index.jsp"); %>

</body>
</html>