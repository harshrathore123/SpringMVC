<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Our Services</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    min-height:100vh;
    background:linear-gradient(135deg,#141e30,#243b55);
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    width:90%;
    max-width:1100px;
    text-align:center;
    color:white;
}

h1{
    margin-bottom:50px;
    font-size:50px;
}

.cards{
    display:flex;
    justify-content:space-between;
    flex-wrap:wrap;
    gap:25px;
}

.card{
    flex:1;
    min-width:250px;
    background:rgba(255,255,255,0.1);
    padding:35px;
    border-radius:20px;
    backdrop-filter:blur(10px);
    transition:.5s;
}

.card:hover{
    transform:translateY(-15px);
    box-shadow:0 10px 30px rgba(255,255,255,0.2);
}

.card h2{
    margin-bottom:20px;
    color:#00e5ff;
}

.card p{
    line-height:1.8;
}
</style>
</head>
<body>

<div class="container">
    <h1>Our Services</h1>

    <div class="cards">

        <div class="card">
            <h2>🌐 Web Development</h2>
            <p>Build responsive and dynamic web applications using Spring MVC and Java.</p>
        </div>

        <div class="card">
            <h2>🛢 Database Integration</h2>
            <p>Connect applications with MySQL using JDBC and Hibernate ORM.</p>
        </div>

        <div class="card">
            <h2>☁ Backend Solutions</h2>
            <p>Create scalable backend APIs and enterprise applications.</p>
        </div>

    </div>
</div>

</body>
</html>