<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹 프로젝트 </title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
        }
        .welcome-message {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .button-group {
            margin-top: 20px;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 0 10px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="welcome-message">환영합니다!</div>
    <div class="button-group">
        <a href="/member/login" class="button">로그인</a>
        <a href="/member/save" class="button">회원가입</a>
        <a href="/member/" class="button">회원목록 조회</a>
    </div>
</div>
</body>
</html>