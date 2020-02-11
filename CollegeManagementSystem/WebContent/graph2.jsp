<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Graph | Haldia Institute of Technology</title>

<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<script>
window.onload = function() {

var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "Status of student placed"
	},
	data: [{
		type: "pie",
		startAngle: 25,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints: [
			{ y: 71.08, label: "Placed " },
			{ y: 17.34, label: "Placed in more than one companies" },
			{ y: 11.58, label: "Not placed" },
			
		
			
			
		]
	}]
});
chart.render();

}

/* window.onload = function () {
	
	var chart = new CanvasJS.Chart("chartContainer", {
		animationEnabled: true,
		
		title:{
			text:"Placement status-2019"
		},
		axisX:{
			interval: 1
		},
		axisY2:{
			interlacedColor: "rgba(1,77,101,.2)",
			gridColor: "rgba(1,77,101,.1)",
			title: "Number of student"
		},
		data: [{
			type: "bar",
			name: "student",
			axisYType: "secondary",
			color: "#014D65",
			dataPoints: [
				{ y: 40, label: "ICE" },
				{ y: 60, label: "BT" },
				{ y: 53, label: "FT" },
				{ y: 60, label: "CIVIL" },
				{ y: 50, label: "PE" },
				{ y: 112, label: "ME" },
				{ y: 22, label: "CHE" },
				{ y: 42, label: "EE" },
				{ y: 55, label: "AEIE" },
				{ y: 45, label: "ECE" },
				{ y: 100, label: "MCA" },
				{ y: 110, label: "IT" },
				{ y: 120, label: "CSE" },
			
				
				
			]
		}]
	});
	chart.render();

	}
 */

/* window.onload = function () {

	 var chart = new CanvasJS.Chart("chartContainer", {
	 	animationEnabled: true,
	 	title:{
	 		text: "PLACEMENT-2019",
	 		horizontalAlign: "left"
	 	},
	 	data: [{
	 		type: "doughnut",
	 		startAngle: 60,
	 		//innerRadius: 60,
	 		indexLabelFontSize: 17,
	 		indexLabel: "{label} - #percent%",
	 		toolTipContent: "<b>{label}:</b> {y} (#percent%)",
	 		dataPoints: [
	 			{ y: 67, label: "INFOSYS" },
	 			{ y: 28, label: "WIPRO" },
	 			{ y: 10, label: "CTS" },
	 			{ y: 7, label: "EXTRAMARKS"},
	 			{ y: 15, label: "TCS"},
	 			{ y: 7, label: "CAPEGIMINI"}
	          
	 		]
	 	}]
	 });
	 chart.render();

	 } */
</script>
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

<br><br><br><br><br>
		<div id="chartContainer" style="height: 300px; width: 60%; margin:auto;"></div>
		<script src="javascript/graph.js"></script>


	<br><br><br><br><br>
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