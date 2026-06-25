<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
.{
margin
:
0px
;

	
padding
:
0px
;


}
.maincontainer {
	display: flex;
	justify-content: center;
	align-item: center;
	margin-top: 30px;
}

.container {
	padding: 50px;
	width: 400px;
	height: 100px;
	border: 2px solid black;
}

.heading {
	color: brown;
}
</style>
<body>
	<%
	String name = (String) request.getAttribute("name");
	Integer age = (Integer) request.getAttribute("age");
	%>
	<div class="maincontainer">
		<div class="container">
			<h1 class="heading">
				My Name is:
				<%=name%>
			</h1>
			
			<h1 class="heading">
				My Age is:
				<%=age%>
			</h1>
		</div>
	</div>
</body>
</html>