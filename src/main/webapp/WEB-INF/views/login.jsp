<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .login-form h2 {
            margin-top: 0;
            text-align: center;
        }
        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        .login-form input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 0;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        .login-form input[type="submit"]:hover {
            background-color: #45a049;
        }
        .error-message {
            display: none;
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="login-form">
    <h2>Login</h2>
    <form id="loginForm" action="/member/login" method="post" onsubmit="return validateLogin()">
        <input type="text" name="memberEmail" id="memberEmail" placeholder="이메일">
        <input type="password" name="memberPassword" id="memberPassword" placeholder="비밀번호">
        <input type="submit" value="로그인">
    </form>
    <c:if test="${not empty errorMessage}">
        ${errorMessage}
    </c:if>
    <button onclick="goToIndex()">뒤로가기</button>
</div>
<script>
    function validateLogin() {
        var email = document.getElementById("memberEmail").value;
        var password = document.getElementById("memberPassword").value;
        var errorMessage = document.getElementById("errorMessage");

        if (email === "" || password === "") {
            errorMessage.innerText = "이메일과 비밀번호를 모두 입력해주세요.";
            errorMessage.style.display = "block";
            return false;
        }
    }
    const goToIndex = () => {
        location.href = "/member/index";
    }
</script>
</body>
</html>