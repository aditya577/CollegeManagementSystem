<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Update | Haldia Institute of Technology</title>

<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<link rel="stylesheet" type="text/css" href="css/login.css">


<style type="text/css">
h1{
	text-font:400%;
  	text-align:center;
}
</style>

</head>
<body>

	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

		<div class="header">
			<br>
			<div class="logo">
				<a href="index.jsp">
					<img src="pics/haldia_logo.png" alt="logo">
				</a>
			</div>
				<br><br>	
		</div>

		<div class="navbar">	
			<a href="studentHome.jsp">Student-Home</a>
			<a href="studentProfile.jsp">Profile</a>
			<a href="#">Attendance</a>
			<a href="logout.jsp">Logout</a>
		</div>

<%
Object obj1= session.getAttribute("student_profile_update_success_flag");
if(obj1 != null)
{
	boolean flag=(boolean)obj1;
	if(flag == true)
	{
%>		
		<h1>Profile Updated Successfully !!!</h1>
		<h3>You will be redirected automatically</h3>
<%
response.setHeader("Refresh", "2;url=studentHome.jsp");
	}
}
%>

<%
Object obj2= session.getAttribute("student_profile_update_fail_flag");
if(obj2 != null)
{
	boolean flag=(boolean)obj1;
	if(flag == false)
	{
%>		
		<h1>Profile Updation Failed !!!</h1>
		<h3>You will be redirected automatically</h3>
<%
response.setHeader("Refresh", "2;url=studentProfileEdit.jsp");
	}
}
%>

	<div class="footer">
		<br>
		<p>All rights reserved</p>
		<p>Designed and Developed By XYZ, WebMaster of HIT, Haldia</p>
	
	</div>
	
	<script>
		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {scrollFunction()};
		
		function scrollFunction() {
		  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
		    document.getElementById("myBtn").style.display = "block";
		  } else {
		    document.getElementById("myBtn").style.display = "none";
		  }
		}
		
		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
		  document.body.scrollTop = 0;
		  document.documentElement.scrollTop = 0;
		}
	</script>

</body>
</html>