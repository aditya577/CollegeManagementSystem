<%@page import="com.ocms.bean.StudentMainBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Profile Edit | Haldia Institute of Technology</title>

<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">

</head>
<body>

<%
//to disbale going back to secure pages by Back-Button==========================================
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");// HTTP1.1 and later
response.setHeader("Pragma", "no-cache");//HTTP1.0
response.setHeader("Expires", "0");//proxy-server

if(session.getAttribute("student_logged_in_token")==null)
    response.sendRedirect("studentLogin.jsp");
//===============================================================================================

Object obj= session.getAttribute("student_bean");
if(obj !=null)
{
	StudentMainBean bean=(StudentMainBean)obj;
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
			<a href="studentHome.jsp">Student Home</a>
			<a href="#">Attendance</a>
			<a href="studentProfileEdit.jsp">Edit Profile</a>
			<a href="logout.jsp">Logout</a>
		</div>	


<br><br>

<h4>Edit Details</h4>

<form action="StudentProfileEditSrv" method="post">

<table align="center" border="1">
<tr><td>College Roll: <input type="text" name="college_roll" value="<%= bean.getCollege_roll()%>" readonly></td></tr>
<tr><td>Name: <input type="text" name="name" value="<%= bean.getName() %>" maxlength="50" required></td></tr>
<tr><td>DOB: <input type="date" name="dob" value="<%= bean.getDob() %>" required></td></tr>
<tr><td>Gender: <input type="radio" name="gender" value="MALE" required>Male
				<input type="radio" name="gender" value="FEMALE" required>Female
				<input type="radio" name="gender" value="OTHER" required>Other</td></tr>
<tr><td>Mobile: <input type="tel" name="mobile" value="<%=bean.getMobile() %>" maxlength="10" readonly></td></tr>
<tr><td>Email: <input type="email" name="email" value="<%=bean.getEmail() %>" maxlength="400" readonly></td></tr>
<tr><td>Branch: <select name="branch" required>
					<option value="CSE">CSE</option>
					<option value="ICE">ICE</option>
					<option value="IT">IT</option>
				 </select></td></tr>
<tr><td>Session: <select name="session" required>
					<option value="2018-2022">2018-2022</option>
					<option value="2019-2023">2019-2023</option>
					<option value="2020-2024">2020-2024</option>
				 </select></td></tr>
<tr><td>Semester: <select name="semester" required>
					<option value="1st sem">1st sem</option>
					<option value="2nd sem">2nd sem</option>
					<option value="3rd sem">3rd sem</option>
					<option value="4th sem">4th sem</option>
					<option value="5th sem">5th sem</option>
					<option value="6th sem">6th sem</option>
					<option value="7th sem">7th sem</option>
					<option value="8th sem">8th sem</option>
				 </select></td></tr>
<tr><td><input type="submit" value="Submit"><input type="reset" placeholder="Reset"></td></tr>
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