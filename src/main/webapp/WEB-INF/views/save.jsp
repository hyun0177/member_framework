<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save</title>
</head>
<body>
    <form action="/member/save" method="post">
        <input type="text" name="memberName" placeholder="이름">
        <input type="text" name="memberEmail" placeholder="아이디(이메일)">
        <input type="text" name="memberPassword" placeholder="비밀번호">
        <input type="text" name="memberCheckPassword" placeholder="비밀번호 확인">
        <input type="submit" value="회원 가입">
    </form>
</body>
</html>
