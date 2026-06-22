<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

body {
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
	overflow: hidden;
}

.container {
	width: 800px;
	padding: 50px;
	background: rgba(255, 255, 255, 0.1);
	border-radius: 20px;
	backdrop-filter: blur(15px);
	box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
	color: white;
	text-align: center;
	animation: slideUp 1.2s ease;
}

h1 {
	font-size: 45px;
	margin-bottom: 20px;
	color: #00e5ff;
}

h2 {
	margin-bottom: 20px;
	color: #fff;
}

p {
	font-size: 18px;
	line-height: 1.8;
	color: #e0e0e0;
}

.highlight {
	color: #00e5ff;
	font-weight: bold;
}

button {
	margin-top: 30px;
	padding: 15px 35px;
	border: none;
	border-radius: 30px;
	background: #00e5ff;
	color: black;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
	transition: 0.4s;
}

button:hover {
	background: white;
	transform: scale(1.1);
}

.circle {
	position: absolute;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.1);
	animation: float 6s infinite ease-in-out;
}

.circle1 {
	width: 180px;
	height: 180px;
	top: 10%;
	left: 8%;
}

.circle2 {
	width: 120px;
	height: 120px;
	bottom: 12%;
	right: 10%;
	animation-delay: 2s;
}

@
keyframes slideUp {from { opacity:0;
	transform: translateY(100px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
@
keyframes float { 0%{
	transform: translateY(0);
}
50
%
{
transform
:
translateY(
-25px
);
}
100
%
{
transform
:
translateY(
0
);
}
}
</style>
</head>
<body>

	<div class="circle circle1"></div>
	<div class="circle circle2"></div>

	<div class="container">
		<h1>About Us</h1>

		<h2>Welcome to Spring MVC Project</h2>

		<p>
			This project is developed using <span class="highlight">Spring
				MVC Framework</span>. It demonstrates the implementation of Controllers,
			Views (JSP), Request Mapping, and Model objects.
		</p>

		<br>

		<p>
			Designed and developed by <span class="highlight">Harsh
				Rathore</span>, aspiring Java Full Stack Developer.
		</p>

		<button onclick="showMessage()">Learn More</button>
	</div>

	<script>
function showMessage(){
    alert("Thank you for visiting the About Page! 🚀");
}
</script>

</body>
</html>
