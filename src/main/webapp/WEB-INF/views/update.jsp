<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
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
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        input[type="button"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 0;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="button"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<form action="/member/update" method="post" name="updateForm">
    id: <input type="text" name="id" value="${member.id}"readonly>
    email: <input type="text" name="memberEmail" value="${member.memberEmail}"readonly>
    password: <input type="text" name="memberPassword" id="memberPassword">
    name: <input type="text" name="memberName" value="${member.memberName}" readonly>
    age: <input type="text" name="memberAge" value="${member.memberAge}">
    mobile: <input type="text" name="memberMobile" value="${member.memberMobile}">
    <input type="button" value="수정" onclick="update()">
</form>
</body>
<script>
    const update = () => {
        const passwordDB = '${member.memberPassword}';
        const password = document.getElementById("memberPassword").value;
        if (passwordDB == password) {
            document.updateForm.submit();
        } else {
            alert("비밀번호가 일치하지 않습니다!");
        }
    }
</script>
</html>