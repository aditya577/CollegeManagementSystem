<%@page import="com.ocms.bean.StudentMainBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Profile | Haldia Institute of Technology</title>

<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">

</head>

<body align="center">

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

	<div class="profile">
		<h4>Student Details</h4>
		
		<p>Name:<%=bean.getName() %></p><br>
		<p>DOB: <%=bean.getDob() %></p><br>
		<p>Gender: <%=bean.getGender() %></p><br>
		<p>Mobile: <%=bean.getMobile() %></p><br>
		<p>Email: <%=bean.getEmail() %></p><br>
		<p>College Roll: <%=bean.getCollege_roll() %></p><br>
		<p>Branch: <%=bean.getBranch() %></p><br>
		<p>Semester: <%=bean.getSemester() %></p><br>
		<p>Session: <%=bean.getSession() %></p><br>
	</div>
 
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