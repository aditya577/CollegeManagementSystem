<%@page import="com.ocms.bean.FacultyMainBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password Change | Haldia Institute of Technology</title>

<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<link rel="stylesheet" type="text/css" href="css/login.css">

</head>
<body align="center">

<%
//to disbale going back to secure pages by Back-Button==========================================
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");// HTTP1.1 and later
response.setHeader("Pragma", "no-cache");//HTTP1.0
response.setHeader("Expires", "0");//proxy-server

if(session.getAttribute("faculty_logged_in_token")==null)
    response.sendRedirect("facultyLogin.jsp");
//===============================================================================================

Object obj= session.getAttribute("faculty_login_success_bean");
if(obj !=null)
{
	FacultyMainBean bean = (FacultyMainBean)obj;
%>

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
			<a href="facultyHome.jsp">Faculty Home</a>
			<a href="facultyProfile.jsp">Profile</a>
			<a href="facultyProfileEdit.jsp">Profile Edit</a>
			<a href="logout.jsp">Logout</a>
		</div>

<h4>Password Change</h4>

<script>
function Validate(oldp) {
	var oldpassword = document.getElementById("oldpassword").value;
	if(oldp != oldpassword){
		 alert("Current Password did not match !!!");
	        return false;
	}
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("rpassword").value;
    if (password != confirmPassword) {
        alert("New passwords do not match !!!");
        return false;
    }
    return true;
}

</script>

<form action="PasswordUpdateByFacultySrv" method="post" id="regForm" onsubmit="return Validate(<%=bean.getPassword()%>)" >


Old password:<input type="password" id="oldpassword" required><br><br>
<input type="hidden" name="faculty_id" value="<%=bean.getFaculty_id()%>">
New password: <input type="password" name="password" id="password" maxlength="16" required><br><br>
Confirm Password: <input type="password" id="rpassword" maxlength="16" required><br><br>

<input type="submit" value="Submit">
<input type="reset" value="Reset">


</form>

<%} %>

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