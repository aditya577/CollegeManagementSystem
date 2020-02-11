<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration | Haldia Institute of Technology</title>

<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" type="text/css" href="css/register.css">

</head>
<body>

		<!-- <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button> -->

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
    			<button class="dropbtn">Departments</button>
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

		<div class="register-heading">
			<h3>Student Registration</h3>
			(All the fields are required)
		</div>

<div class="alert">
<%
Object obj=session.getAttribute("student_registration_flag");
if(obj != null)
{
	boolean flag=(boolean)obj;
	if(flag == false)
	{
		out.print("Registration Not Successful, Please register again !!!");
	}
}

Object obj1= session.getAttribute("student_already_registered");
if(obj1 != null)
{
	boolean flag=(boolean)obj1;
	if(flag == true)
	{
		out.print("College-Roll and/or Mobile and/or Email already registered !!!");
	}
}

session.invalidate();
%>
</div>


<div class="container">
  <form action="StudentRegisterSrv" method="post">
    <div class="row">
      <div class="col-25">
        <label for="college_roll">College Roll:</label>
      </div>
      <div class="col-75">
        <input type="text" id="college_roll" name="college_roll" placeholder="15/CS/06" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="name">Name:</label>
      </div>
      <div class="col-75">
        <input type="text" id="name" name="name" placeholder="Your name.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="dob">DOB:</label>
      </div>
      <div class="col-75">
        <input type="date" id="dob" name="dob" value="1990-01-01" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="gender">Gender:</label>
      </div>
      <div class="col-75">
        <input type="radio" name="gender" value="MALE" required>Male
		<input type="radio" name="gender" value="FEMALE" required>Female
		<input type="radio" name="gender" value="OTHER" required>Other
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="mobile">Mobile:</label>
      </div>
      <div class="col-75">
        <input type="tel" name="mobile" placeholder="Valid mobile no..." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="email">Email:</label>
      </div>
      <div class="col-75">
       <input type="email" name="email" placeholder="Valid Email..."  required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="branch">Branch:</label>
      </div>
      <div class="col-75">
        <select name="branch" required>
				<option value="CSE">CSE</option>
				<option value="ICE">ICE</option>
				<option value="IT">IT</option>
		</select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="session">Session:</label>
      </div>
      <div class="col-75">
        <select name="session" required>
				<option value="2018-2022">2018-2022</option>
				<option value="2019-2023">2019-2023</option>
				<option value="2020-2024">2020-2024</option>
		</select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="semester">Semester:</label>
      </div>
      <div class="col-75">
        <select name="semester" required>
					<option value="1st sem">1st sem</option>
					<option value="2nd sem">2nd sem</option>
					<option value="3rd sem">3rd sem</option>
					<option value="4th sem">4th sem</option>
					<option value="5th sem">5th sem</option>
					<option value="6th sem">6th sem</option>
					<option value="7th sem">7th sem</option>
					<option value="8th sem">8th sem</option>
		</select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Password:</label>
      </div>
      <div class="col-75">
        <input style="width:80%" type="password" name="password" placeholder="Enter password..." required>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Submit">
      <input type="reset" value="Reset"> &nbsp;
    </div>
  </form>
</div>

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
	<!-- <script>
// When the user scrolls down 80px from the top of the document, resize the navbar's padding and the logo's font size
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
    document.getElementById("navbar").style.padding = "30px 10px";
    document.getElementById("logo").style.fontSize = "25px";
  } else {
    document.getElementById("navbar").style.padding = "80px 10px";
    document.getElementById("logo").style.fontSize = "35px";
  }
}
</script> -->

</body>
</html>