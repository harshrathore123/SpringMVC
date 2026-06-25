<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

body {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(135deg, #667eea, #764ba2);
	overflow: hidden;
}

.container {
	background: rgba(255, 255, 255, 0.15);
	backdrop-filter: blur(10px);
	padding: 50px;
	border-radius: 20px;
	text-align: center;
	color: white;
	box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
	animation: slideUp 1.5s ease;
}

h1 {
	margin-bottom: 15px;
	animation: fadeIn 2s ease;
}

p {
	font-size: 18px;
	margin-bottom: 25px;
}

button {
	padding: 15px 35px;
	border: none;
	border-radius: 30px;
	background: #ffffff;
	color: #764ba2;
	font-size: 16px;
	cursor: pointer;
	transition: 0.4s;
}

button:hover {
	background: #ffcc00;
	color: black;
	transform: scale(1.1);
}

.circle {
	position: absolute;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.1);
	animation: float 6s infinite ease-in-out;
}

.circle1 {
	width: 200px;
	height: 200px;
	top: 10%;
	left: 10%;
}

.circle2 {
	width: 150px;
	height: 150px;
	bottom: 10%;
	right: 15%;
	animation-delay: 2s;
}

@
keyframes slideUp {from { opacity:0;
	transform: translateY(80px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes float { 0%{
	transform: translateY(0px);
}
50


%
{
transform


:


translateY
(


-30px


)
;


}
100


%
{
transform


:


translateY
(


0px


)
;


}
}
</style>
</head>

<body>

	<div class="circle circle1"></div>
	<div class="circle circle2"></div>

	<%
	String name = (String) request.getAttribute("name");
	Integer id = (Integer) request.getAttribute("Id");
	Integer age = (Integer) request.getAttribute("age");
	%>

	<div class="container">
		<h1>Welcome to Spring MVC</h1>
		<h1>
			Name is
			<%=name%>
		</h1>
		<p>
			Id is
			<%=id%>
		</p>
		<p>
			Age is
			<%=age%>
		</p>



		<button onclick="showMessage()">Explore More</button>
	</div>

	<script>
		function showMessage() {
			alert("Welcome Harsh! Spring MVC is running successfully 🚀");
		}
	</script>

</body>
</html>
