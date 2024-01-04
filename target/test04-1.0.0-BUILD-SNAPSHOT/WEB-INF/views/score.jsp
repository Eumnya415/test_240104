<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>학점관리</title>
    <script>
        function validateForm() {
            let studentId = document.forms["studentForm"]["studentId"].value;
            let name = document.forms["studentForm"]["name"].value;
            let score = document.forms["studentForm"]["score"].value;
            if (studentId == "" || name == "" || score == "") {
                alert("모든 필드를 채워주세요.");
                return false;
            }
            if (score < 0 || score > 100) {
                alert("값은 100 이하여야 합니다.");
                return false;
            }
            return true;
        }

        window.onload = function() {
            document.getElementById("studentId").focus();
        };
    </script>
</head>
<body>

<h2>학점 관리</h2>
<form name="studentForm" action="/students/register" onsubmit="return validateForm()" method="post">
    학번: <input type="text" id="studentId" name="studentId"><br>
    이름: <input type="text" name="name"><br>
    성별:
    <input type="radio" id="genderM" name="gender" value="M">
    <label for="genderM">남</label>
    <input type="radio" id="genderF" name="gender" value="F">
    <label for="genderF">여</label><br>
    점수: <input type="number" name="score" min="0" max="100"><br>
    <input type="submit" value="저장">
</form>
</body>
</html>