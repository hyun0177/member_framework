<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원 상세 정보</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #007bff;
            text-align: center;
        }
        .info-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .info-table th {
            background-color: lightskyblue;
            color: #fff;
            padding: 15px;
            text-align: left;
            font-size: 18px;
        }
        .info-table td {
            border-bottom: 2px solid #007bff;
            padding: 15px;
            font-size: 16px;
            color: #555;
        }
        .info-table tr:nth-child(even) {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>회원 상세 정보</h2>
    <table class="info-table">
        <tr>
            <th>ID</th>
            <td>${member.id}</td>
        </tr>
        <tr>
            <th>Email</th>
            <td>${member.memberEmail}</td>
        </tr>
        <tr>
            <th>Password</th>
            <td>${member.memberPassword}</td>
        </tr>
        <tr>
            <th>Name</th>
            <td>${member.memberName}</td>
        </tr>
        <tr>
            <th>Age</th>
            <td>${member.memberAge}</td>
        </tr>
        <tr>
            <th>Mobile</th>
            <td>${member.memberMobile}</td>
        </tr>
    </table>
    <a href="/member/login" class="button">다음</a>
</div>
</body>
</html>