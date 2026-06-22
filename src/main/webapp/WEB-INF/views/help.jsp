<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Help & Support</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#4b6cb7,#182848);
}

.container{
    width:700px;
    background:rgba(255,255,255,.15);
    backdrop-filter:blur(15px);
    padding:50px;
    border-radius:20px;
    color:white;
    text-align:center;
    box-shadow:0 8px 32px rgba(0,0,0,.3);
}

h1{
    margin-bottom:30px;
    color:#00e5ff;
}

.help-box{
    margin-top:25px;
    text-align:left;
}

.help-box div{
    background:rgba(255,255,255,.1);
    padding:20px;
    margin:15px 0;
    border-radius:15px;
    transition:.4s;
}

.help-box div:hover{
    transform:translateX(15px);
}

span{
    color:#00e5ff;
    font-weight:bold;
}

button{
    margin-top:30px;
    padding:15px 35px;
    border:none;
    border-radius:30px;
    background:#00e5ff;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
}

button:hover{
    background:white;
}

</style>
</head>
<body>

<div class="container">

    <h1>Help & Support</h1>

    <p>Need assistance? We are here to help you.</p>

    <div class="help-box">

        <div>
            <span>Email Support :</span><br>
            support@springmvc.com
        </div>

        <div>
            <span>Phone Support :</span><br>
            +91 98765 43210
        </div>

        <div>
            <span>Working Hours :</span><br>
            Monday - Saturday (9 AM - 6 PM)
        </div>

    </div>

    <button onclick="contact()">Contact Us</button>

</div>

<script>
function contact(){
    alert("Thank you! Our support team will contact you soon.");
}
</script>

</body>
</html>