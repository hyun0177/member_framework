<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>글 작성 페이지</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }
        .link-container {
            text-align: center;
        }
        .link-container a {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            margin: 0 10px;
        }
        .link-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h2></h2>
<div class="link-container">
    <a href="/board/board.save">글 작성</a>
    <a href="/board/">글 목록</a>
    <a href="/board/paging">페이징 목록</a>
</div>
</body>
</html>