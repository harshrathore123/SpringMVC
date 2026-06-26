<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

*{
	margin:0;
	padding:0;
	box-sizing:border-box;
}

body{
	min-height:100vh;
	display:flex;
	justify-content:center;
	align-items:center;
	background:linear-gradient(135deg,#667eea,#764ba2);
	font-family:Arial,Helvetica,sans-serif;
}

.card{
	width:450px;
	padding:35px;
	border:none;
	border-radius:20px;
	background:rgba(255,255,255,.18);
	backdrop-filter:blur(15px);
	box-shadow:0 15px 35px rgba(0,0,0,.3);
	animation:fadeIn 1s ease;
	transition:.4s;
}

.card:hover{
	transform:translateY(-8px);
	box-shadow:0 25px 45px rgba(0,0,0,.4);
}

.icon{
	font-size:70px;
	color:#fff;
	display:block;
	text-align:center;
	margin-bottom:10px;
	animation:float 3s ease-in-out infinite;
}

h2{
	color:#fff;
	text-align:center;
	font-weight:bold;
	margin-bottom:5px;
}

p{
	text-align:center;
	color:#f8f9fa;
	margin-bottom:25px;
}

.form-label{
	color:#fff;
	font-weight:bold;
}

.form-control{
	height:50px;
	border:none;
	border-radius:12px;
}

.form-control:focus{
	box-shadow:0 0 15px rgba(255,255,255,.6);
	transform:scale(1.02);
}

.btn-register{
	width:100%;
	height:50px;
	border:none;
	border-radius:12px;
	font-size:18px;
	font-weight:bold;
	background:linear-gradient(to right,#00c6ff,#0072ff);
	color:#fff;
	transition:.3s;
}

.btn-register:hover{
	transform:scale(1.05);
	box-shadow:0 10px 20px rgba(0,114,255,.4);
}

@keyframes fadeIn{
	from{
		opacity:0;
		transform:translateY(40px);
	}
	to{
		opacity:1;
		transform:translateY(0);
	}
}

@keyframes float{
	0%,100%{
		transform:translateY(0);
	}
	50%{
		transform:translateY(-10px);
	}
}

</style>

</head>
<body>

<div class="card">

	<i class="bi bi-person-plus-fill icon"></i>

	<h2>${title}</h2>
	<p>${Desc}</p>

	<form action="processform" method="post">

		<div class="mb-3">
			<label class="form-label">
				<i class="bi bi-envelope-fill"></i> Email Address
			</label>

			<input
				type="email"
				class="form-control"
				name="email"
				placeholder="Enter Email"
				required>
		</div>

		<div class="mb-3">
			<label class="form-label">
				<i class="bi bi-person-fill"></i> Username
			</label>

			<input
				type="text"
				class="form-control"
				name="name"
				placeholder="Enter Username"
				required>
		</div>

		<div class="mb-4">
			<label class="form-label">
				<i class="bi bi-lock-fill"></i> Password
			</label>

			<input
				type="password"
				class="form-control"
				name="password"
				placeholder="Enter Password"
				required>
		</div>

		<button class="btn btn-register">
			<i class="bi bi-send-fill"></i>
			Register User
		</button>

	</form>

</div>

</body>
<</html>