<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Main</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    h2 {
      margin-bottom: 20px;
    }
    button {
      padding: 10px 20px;
      margin: 10px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
<h2>${sessionScope.loginEmail} 님 환영합니다.</h2>
<button onclick="goToIndexWrite()">글쓰기</button>
<button onclick="goToUpdate()">내 정보 수정하기</button>
<button onclick="logout()">로그아웃</button>

<script>
  const goToIndexWrite = () => {
    location.href = "/member/index_write";
  }
  const goToUpdate = () => {
    location.href = "/member/update";
  }
  const logout = () => {
    location.href = "/member/logout";
  }
</script>
</body>
</html>