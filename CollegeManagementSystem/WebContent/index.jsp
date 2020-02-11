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

<style type="text/css">

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
		
	
		<div class="left-right">
			<marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">
				<a href="#" target="_blank">
					This is the first scrolling notice from left to right and is click-able if required. 
				</a> |
				<a href="#">
					Second scrolling text from left to right which is also click-able if required.
				</a>
			</marquee>	
		</div>
	
	<div class="slideshow">
		<div class="slideshow-container">

			<div class="mySlides fade">
			  <div class="numbertext">1 / 3</div>
			  <img src="pics/1.jpg" style="width:100%">
			  <div class="text">Caption Text</div>
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">2 / 3</div>
			  <img src="pics/2.jpg" style="width:100%">
			  <div class="text">Caption Two</div>
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">3 / 3</div>
			  <img src="pics/3.jpg" style="width:100%">
			  <div class="text">Caption Three</div>
			</div>

			</div>
			
			<br>
			
			<div style="text-align:center">
			  <span class="dot"></span> 
			  <span class="dot"></span> 
			  <span class="dot"></span> 
			</div>
				
			<script>
				var slideIndex = 0;
				showSlides();
				
				function showSlides() {
				  var i;
				  var slides = document.getElementsByClassName("mySlides");
				  var dots = document.getElementsByClassName("dot");
				  for (i = 0; i < slides.length; i++) {
				    slides[i].style.display = "none";  
				  }
				  slideIndex++;
				  if (slideIndex > slides.length) {slideIndex = 1}    
				  for (i = 0; i < dots.length; i++) {
				    dots[i].className = dots[i].className.replace(" active", "");
				  }
				  slides[slideIndex-1].style.display = "block";  
				  dots[slideIndex-1].className += " active";
				  setTimeout(showSlides, 2000); // Change image every 2 seconds
				}
			</script>
	</div>	
	
	
	<div class="sidebox">
		<br>
		<h2>News & Events</h2>
		<div class="news">
			<marquee direction="up" height="100%" onmouseover="this.stop();" onmouseout="this.start();">
				<h4>First News</h4><br>
				<p>Description of the first news</p><br>
				
				<hr>
				
				<br>
				<h4>Second News</h4><br>
				<p>Description of the second news</p><br>
				
				<hr>
				
				<br>
				<h4>Third News</h4><br>
				<p>Description of the third news</p><br>
				
				<hr>
				
				<br>
				<h4>Fourth News</h4><br>
				<p>Description of the fourth news</p><br>
				
				<hr>
				
				<br>
				<h4>Fifth News</h4><br>
				<p>Description of the fifth news</p><br>
				
				<hr>
				
				<br>
				<h4>Sixth News</h4><br>
				<p>Description of the sixth news</p><br>
				
			</marquee>
			<div class="more-news">
				<p><a href="#">View All ></a></p>
			</div>
		</div>
	</div>
	
	<div class="about">
		<br>
		<h4> Haldia Institute of Technology (HIT)</h4>
		<br>
		<p>
			Haldia Institute of Technology (HIT) is the first private initiated engineering institute in West Bengal, India, approved by All India Council
		 	for Technical Education (AICTE), New Delhi and affiliated to Maulana Abul Kalam Azad University of Technology (MAKAUT).
		 </p>
		<p>	
			The institute has an enclave campus of 49 acres of land having an administrative block of 2787 square meters with nine academic blocks having 
			an area of around 24980 square meters and a hostel area of 24315 square meters. The hostel facility is available for both boys and girls to 
			accommodate almost all the students. Facilities include an amenities area of 1830 square metres a library, Post Office, laundry facility, medical 
			stores, bank with ATM facilities and restaurant. There are 12 B.Tech courses, and five M.Tech and MCA, MBA courses.
		</p>
		
		<div class="more-about">
				<p><a href="#">View All ></a></p>
		</div>
		
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