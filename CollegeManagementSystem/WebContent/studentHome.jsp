<%@page import="com.ocms.bean.StudentMainBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Home | Haldia Institute of Technology</title>

<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<link rel="stylesheet" type="text/css" href="css/login.css">

<script type="text/javascript">
function passwordUpdateSuccessFunction(){
	window.alert("Password Updated Successfully !!!");
	window.location="logout.jsp";
}
function passwordUpdateFailureFunction(){
	window.alert("Password Updation Failed !!!");
}
</script>

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
%>

<%
Object obj1 = session.getAttribute("password_change_flag");
if(obj1 != null)
{
	boolean flag=(boolean)obj1;
	if(flag)
	{
%>
	<script>passwordUpdateSuccessFunction();</script>
<%	
	}
	else
	{
%>		
	<script>passwordUpdateFailureFunction();</script>
<%		
	}
}


Object obj= session.getAttribute("student_bean");
if(obj !=null)
{
	StudentMainBean bean=(StudentMainBean)obj;
 %>

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
			<a href="studentProfile.jsp">Profile</a>
			<a href="#">New</a>
			<a href="passwordChangeByStudent.jsp">Change Password</a>
			<div class="username">	
				<div class="dropdown">
	    			<button class="dropbtn"><% out.print(bean.getName());%></button>
	   			 	<div class="dropdown-content">
	      				<a href="logout.jsp">Logout</a>
	    			</div>
	  			</div>
	  		</div>	 
		</div>
		
	
	
	    <div class="homepage">
	    
	    <a href="#">Student f1</a> &nbsp;
	    <a href="#">Student f2</a> <br><br>
	    <a href="#">Student f3</a> &nbsp;
	    <a href="#">Student f4</a>
	    
	    </div>
	
	
		<%} %>
		<div class="footer">
			<br>
			<p>All rights reserved</p>
			<p>Designed and Developed By XYZ, WebMaster of HIT, Haldia</p>
		
		</div>


</body>
</html>