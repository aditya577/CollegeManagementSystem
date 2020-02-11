<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home | Haldia Institute of Technology</title>

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

if(session.getAttribute("admin_logged_in_token")==null)
    response.sendRedirect("adminLogin.jsp");
//===============================================================================================
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
			<div class="username">	
				<div class="dropdown">
	    			<button class="dropbtn">Admin</button>
	   			 	<div class="dropdown-content">
	      				<a href="logout.jsp">Logout</a>
	    			</div>
	  			</div>
	  		</div>
		</div>
		
		 <div class="homepage">
	    
		    <a href="#">Admin fn1</a> &nbsp;
		    <a href="#">Admin fn2</a> <br><br>
		    <a href="#">Admin fn3</a> &nbsp;
		    <a href="#">Admin fn4</a>
		    
		 </div>


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