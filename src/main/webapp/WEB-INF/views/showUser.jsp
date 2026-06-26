<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search User</title>

<!-- Bootstrap CSS -->
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
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#667eea,#764ba2);
    font-family:Arial, Helvetica, sans-serif;
    overflow:hidden;
}

.card{
    width:420px;
    padding:35px;
    border:none;
    border-radius:20px;
    background:rgba(255,255,255,0.18);
    backdrop-filter:blur(15px);
    box-shadow:0 15px 35px rgba(0,0,0,.25);
    animation:fadeIn 1s ease;
    transition:.4s;
}

.card:hover{
    transform:translateY(-8px);
    box-shadow:0 25px 45px rgba(0,0,0,.35);
}

h2{
    color:white;
    font-weight:bold;
    text-align:center;
    margin-bottom:30px;
}

.form-control{
    height:55px;
    border-radius:12px;
    border:none;
    transition:.3s;
}

.form-control:focus{
    box-shadow:0 0 15px rgba(255,255,255,.6);
    transform:scale(1.02);
}

.btn-search{
    width:100%;
    height:50px;
    border:none;
    border-radius:12px;
    background:#00c6ff;
    background:linear-gradient(to right,#00c6ff,#0072ff);
    color:white;
    font-size:18px;
    font-weight:bold;
    transition:.3s;
}

.btn-search:hover{
    transform:scale(1.05);
    box-shadow:0 10px 20px rgba(0,114,255,.4);
}

.icon{
    font-size:70px;
    color:white;
    display:block;
    text-align:center;
    margin-bottom:15px;
    animation:float 3s ease-in-out infinite;
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

    <i class="bi bi-person-search icon"></i>

    <h2>Search User</h2>

    <form action="showUserData" method="get">

        <div class="mb-4">
            <label class="form-label text-white fw-bold">
                Enter User ID
            </label>

            <input
                type="number"
                name="id"
                class="form-control"
                placeholder="Enter User ID"
                required>
        </div>

        <button class="btn btn-search">
            <i class="bi bi-search"></i>
            Search User
        </button>

    </form>

</div>

</body>
</html>