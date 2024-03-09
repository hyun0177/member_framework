<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
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
        .signup-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .signup-form h2 {
            margin-top: 0;
            text-align: center;
            color: #333;
        }
        .signup-form input[type="text"],
        .signup-form input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
            margin-left: 10px;
        }
        .signup-form input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 0;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            margin-top: 10px;
        }
        #check-result {
            text-align: center;
            margin-top: 10px;
            color: #333;
        }
        #check-result.green {
            color: green;
        }
        #check-result.red {
            color: red;
        }
    </style>
</head>
<body>
<div class="signup-form">
    <h2>회원가입</h2>
    <form action="/member/save" method="post">
        <input type="text" name="memberEmail" placeholder="이메일" id="memberEmail" onblur="emailCheck()">
        <p id="check-result"></p>
        <input type="password" name="memberPassword" placeholder="비밀번호">
        <input type="text" name="memberName" placeholder="이름">
        <input type="text" name="memberAge" placeholder="나이">
        <input type="text" name="memberMobile" placeholder="전화번호">
        <input type="submit" value="회원가입">
    </form>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script>
    const emailCheck = () => {
        const email = document.getElementById("memberEmail").value;
        const checkResult = document.getElementById("check-result");
        $.ajax({
            type: "post",
            url: "/member/email-check",
            data: {
                "memberEmail": email
            },
            success: function(res) {
                if (res == "ok") {
                    checkResult.classList.remove("red");
                    checkResult.classList.add("green");
                    checkResult.innerHTML = "사용 가능한 이메일";
                } else {
                    checkResult.classList.remove("green");
                    checkResult.classList.add("red");
                    checkResult.innerHTML = "이미 사용중인 이메일";
                }
            },
            error: function(err) {
                console.log("에러 발생", err);
            }
        });
    }
</script>
</html>