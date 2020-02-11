<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home | Haldia Institute of Technology</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<link rel="stylesheet" type="text/css" href="css/slide.css">

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
		
		<div class="navbar" id="nav">
  			<a href="index.jsp">Home</a>
  			<a href="#">About</a>
  			<a href="#">Central Library</a>
  			<div class="dropdown">
    			<button class="dropbtn">Departments</button>
   			 	<div class="dropdown-content">
      				<a href="#">CSE</a>
      				<a href="#">ICE</a>
      				<a href="#">Civil</a>
    			</div>
  			</div> 
  			<a href="#">Event Registration</a>
  			<a href="studyresource.jsp">Study Resources</a>
  			<a href="#">Papers Published</a>
  			<a href="http://makautexam.net/" target="_blank">MAKAUT</a>
  			<div class="dropdown">
	    		<button class="dropbtn">Graph</button>
	   		 	<div class="dropdown-content">
	      			<a href="graph1.jsp">Graph 1</a>
	      			<a href="graph2.jsp">Graph 2</a>
	      			<a href="graph3.jsp">Graph 3</a>
	    		</div>
	  		</div>
	  		<div class="dropdown">
	    		<button class="dropbtn">Login</button>
	   		 	<div class="dropdown-content">
	      			<a href="facultyLogin.jsp">Faculty</a>
	      			<a href="studentLogin.jsp">Student</a>
	      			<a href="adminLogin.jsp">Admin</a>
	    		</div>
	  		</div>
  			
		</div>
	
	<div class="whole-body">
		
		<h1>Study Resource</h1>
		<br>
		<a href="">Computer Science and Engineering</a><br>
		<a href="">Instrumentation and Control</a><br>
		<a href="">Information Technology</a><br>

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