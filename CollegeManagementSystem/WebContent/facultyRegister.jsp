<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Registration | Haldia Institute of Technology</title>

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
		<h3>Faculty Registration</h3>
		(All the fields are required)
	</div>
<div class="alert">
<%
Object obj=session.getAttribute("faculty_registration_flag");
if(obj != null)
{
	boolean flag=(boolean)obj;
	if(flag == false)
	{
		out.print("Registration failed, try again !!!");
	}
}

Object obj1=session.getAttribute("faculty_registered_flag");
if(obj1 != null)
{
	boolean flag=(boolean)obj1;
	if(flag == true)
	{
		out.print("Faculty-Id and/or Mobile and/or Email already registered !!!");
	}
}

session.invalidate();
%>
</div>

<div class="container">
  <form action="FacultyRegisterSrv" method="post">
    <div class="row">
      <div class="col-25">
        <label for="faculty_id">Faculty id:</label>
      </div>
      <div class="col-75">
        <input type="text" name="faculty_id" placeholder="valid id" maxlength="20" required>
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
        <input type="tel" name="mobile" placeholder="Valid mobile no..." maxlength="10" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="email">Email:</label>
      </div>
      <div class="col-75">
       <input type="email" name="email" placeholder="Valid Email..." maxlength="400" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="branch">Department:</label>
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
        <label for="designation">Designation:</label>
      </div>
      <div class="col-75">
        <select name="designation" required>
					<option value="Professor">Professor</option>
					<option value="Associate Professor">Associate Professor</option>
					<option value="Assistant Professor">Assistant Professor</option>
		</select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="qualification">Qualification:</label>
      </div>
      <div class="col-75">
        <select name="qualification" required>
					<option value="M.Tech.">M.Tech.</option>
					<option value="M.Sc.">M.Sc.</option>
					<option value="M.Com.">M.Com.</option>
					<option value="M.Tech.">M.Tech.</option>
					<option value="M.E.">M.E.</option>
					<option value="M.Phil.">M.Phil.</option>
					<option value="Ph.D.">Ph.D.</option>
					<option>Other</option><ins></ins>
		</select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="specialization">Specialization:</label>
      </div>
      <div class="col-75">
        <input type="text" name="specialization" placeholder="Computer Science" maxlength="90" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="password">Password:</label>
      </div>
      <div class="col-75">
        <input style="width:80%;" type="password" name="password" placeholder="Enter password..." required>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Submit">
      <input type="reset" value="Reset">
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

</body>
</html>