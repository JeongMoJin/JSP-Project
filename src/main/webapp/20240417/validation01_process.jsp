<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-17
  Time: 오전 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
  String userid = request.getParameter("id");
  String password = request.getParameter("passwd");
%>

<p>아이디 : <%=userid%></p>
<p>비밀번호 : <%=password%></p>

</body>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    if (userid.trim() == "" | password.trim() == "" ) {
      alert("아이디 (또는 비밀번호)를 입력해주세요")
    }
    if (password.includes(userid)) {
      alert("비밀번호는 ID를 포함할 수 없습니다.")
    }
  })
</script>
</html>
