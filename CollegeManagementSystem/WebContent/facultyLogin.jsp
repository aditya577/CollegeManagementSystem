<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Login | Haldia Institute of Technology</title>

<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<link rel="stylesheet" type="text/css" href="css/login.css">

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
  			<a href="index.jsp">Home</a>
  			<a href="#">About</a>
  			<a href="#">Central Library</a>
  			<div class="dropdown">
    			<button class="dropbtn">Departments
      				<i class="fa fa-caret-down"></i>
    			</button>
   			 	<div class="dropdown-content">
      				<a href="#">CSE</a>
      				<a href="#">ICE</a>
      				<a href="#">Civil</a>
    			</div>
  			</div> 
  			<a href="#">Event Registration</a>
  			<a href="#">Study Resources</a>
  			<a href="#">Papers Published</a>
  			<a href="http://makautexam.net/" target="_blank">MAKAUT</a>
  			<div class="dropdown">
    			<button class="dropbtn">Login</button>
   			 	<div class="dropdown-content">
      				<a href="facultyLogin.jsp">Faculty</a>
      				<a href="studentLogin.jsp">Student</a>
      				<a href="adminLogin.jsp">Admin</a>
    			</div>
  			</div> 
		</div>
	

		<br>
		<h2 align="center">Faculty Login</h2>
		
		<div class=alert>
		<%
		Object obj=session.getAttribute("faculty_registration_flag");
		if(obj != null)
		{
			boolean flag=(boolean)obj;
			if(flag)
			{
				out.print("Registration Successfully !!!");
			}
		}
		
		Object obj1=session.getAttribute("faculty_login_failed_flag");
		if(obj1 != null)
		{
			boolean flag=(boolean)obj1;
			if(flag == false)
			{
				out.print("Login Credentials did not match any record !!!");
			}
		}
		
		session.invalidate();
		%>
		</div>
		
		
		<form action="FacultyLoginSrv" method="post" class="login">
			  <div class="imgcontainer">
			  	  <img src="pics/faculty.jpg" alt="Avatar" class="avatar">
			  </div>
		
			  <div class="container">
			    <label for="faculty_username"><b>Username</b></label>
			    <input type="text" placeholder="Enter valid email/phone/id" name="faculty_username" required><br>
			
			    <label for="faculty_password"><b>Password</b></label>
			    <input type="password" placeholder="Enter password" name="faculty_password" required><br>
			        
			    <button type="submit">Login</button>
			    <label><br>
			      <input type="checkbox" checked="checked" name="remember"> Remember me
			    </label>
			  </div>
			  
			  <p>Not Registered, <a href="facultyRegister.jsp" style="color:red;">Register Now</a></p>
		
			  
		</form>
		<br><br><br>
	<div class="footer">
		<br>
		<p>All rights reserved</p>
		<p>Designed and Developed By XYZ, WebMaster of HIT, Haldia</p>
	
	</div>
	
	<!-- <script>
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
	</script> -->
	<script>
	if($(window).height() > $("body").height()){
		   $("footer").css("position", "fixed");
		} else {
		   $("footer").css("position", "static");
		}
	</script>

</body>
</html>