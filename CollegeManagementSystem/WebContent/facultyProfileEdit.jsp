<%@page import="com.ocms.bean.FacultyMainBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Profile Edit | Haldia Institute of Technology</title>

<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<link rel="stylesheet" type="text/css" href="css/login.css">

</head>
<body>

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



<h4>Edit Details</h4>

<form action="FacultyProfileEditSrv" method="post">
<table border="1">
<tr><td>Faculty ID: <input type="text" name="faculty_id" value="<%=bean.getFaculty_id() %>" maxlength="20" readonly></td></tr>
<tr><td>Name: <input type="text" name="name" value="<%=bean.getName() %>" maxlength="50" readonly></td></tr>
<tr><td>DOB: <input type="date" name="dob" value="1990-01-01" required></td></tr>
<tr><td>Gender: <input type="radio" name="gender" value="MALE" required>Male
				<input type="radio" name="gender" value="FEMALE" required>Female
				<input type="radio" name="gender" value="OTHER" required>Other</td></tr>
<tr><td>Mobile: <input type="tel" name="mobile" value="<%=bean.getMobile() %>" maxlength="10" required></td></tr>
<tr><td>Email: <input type="email" name="email" value="<%=bean.getEmail() %>" maxlength="400" required></td></tr>
<tr><td>Department: <select name="department" required>
					<option value="CSE">CSE</option>
					<option value="ICE">ICE</option>
					<option value="IT">IT</option>
				 </select></td></tr>
<tr><td>Designation: <select name="designation" required>
					<option value="Professor">Professor</option>
					<option value="Associate Professor">Associate Professor</option>
					<option value="Assistant Professor">Assistant Professor</option>
				 </select></td></tr>
<tr><td>Qualification: <select name="qualification" required>
					<option value="M.Tech.">M.Tech.</option>
					<option value="M.Sc.">M.Sc.</option>
					<option value="M.Com.">M.Com.</option>
					<option value="M.Tech.">M.Tech.</option>
					<option value="M.E.">M.E.</option>
					<option value="M.Phil.">M.Phil.</option>
					<option value="Ph.D.">Ph.D.</option>
					<option>Other</option><ins></ins>
				 </select></td></tr>
<tr><td>Specialization:<input type="text" name="specialization" value="<%=bean.getSpecialization() %>" maxlength="90" required></td></tr>				 

<tr><td><input type="submit" value="Update"><input type="reset" placeholder="Reset"></td></tr>
</table>
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