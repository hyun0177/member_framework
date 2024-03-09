<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>회원 목록</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #dee2e6;
        }
        th {
            background-color: #007bff;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f1f1f1;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        button {
            padding: 6px 10px;
            background-color: #dc3545;
            border: none;
            color: #fff;
            cursor: pointer;
        }
        button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
<h2>회원 목록</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Email</th>
        <th>Password</th>
        <th>Name</th>
        <th>Age</th>
        <th>Mobile</th>
        <th>조회</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${memberList}" var="member">
        <tr>
            <td>${member.id}</td>
            <td><a href="/member?id=${member.id}">${member.memberEmail}</a></td>
            <td>${member.memberPassword}</td>
            <td>${member.memberName}</td>
            <td>${member.memberAge}</td>
            <td>${member.memberMobile}</td>
            <td><a href="/member?id=${member.id}">조회</a></td>
            <td><button onclick="deleteMember('${member.id}')">삭제</button></td>
        </tr>
    </c:forEach>
</table>
<script>
    function deleteMember(id) {
        if (confirm('정말로 삭제하시겠습니까?')) {
            location.href = "/member/delete?id=" + id;
        }
    }
</script>
</body>
</html>