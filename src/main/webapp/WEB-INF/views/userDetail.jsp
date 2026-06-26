<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

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
    font-family:Arial, Helvetica, sans-serif;
}

.card{
    width:500px;
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
    margin-bottom:15px;
    animation:float 3s ease-in-out infinite;
}

h2{
    color:#fff;
    text-align:center;
    margin-bottom:25px;
    font-weight:bold;
}

.table{
    background:#fff;
    border-radius:10px;
    overflow:hidden;
}

.table th{
    background:#0d6efd;
    color:#fff;
    width:35%;
}

.alert{
    font-size:18px;
    text-align:center;
}

.btn-home{
    width:100%;
    margin-top:20px;
    border-radius:10px;
    font-weight:bold;
    transition:.3s;
}

.btn-home:hover{
    transform:scale(1.05);
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

    <i class="bi bi-person-badge-fill icon"></i>

    <c:choose>

        <c:when test="${not empty showuser}">

            <h2>User Details</h2>

            <table class="table table-bordered table-hover">

                <tr>
                    <th><i class="bi bi-person-fill"></i> Name</th>
                    <td>${showuser.name}</td>
                </tr>

                <tr>
                    <th><i class="bi bi-envelope-fill"></i> Email</th>
                    <td>${showuser.email}</td>
                </tr>

                <tr>
                    <th><i class="bi bi-lock-fill"></i> Password</th>
                    <td>${showuser.password}</td>
                </tr>

            </table>

        </c:when>

        <c:otherwise>

            <div class="alert alert-danger">
                <i class="bi bi-exclamation-triangle-fill"></i>
                ${msg}
            </div>

        </c:otherwise>

    </c:choose>

    <a href="showUser" class="btn btn-primary btn-home">
        <i class="bi bi-arrow-left-circle"></i>
        Search Another User
    </a>

</div>

</body>
</html>