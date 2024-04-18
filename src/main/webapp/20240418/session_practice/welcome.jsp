<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-18
  Time: 오전 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    String userId = (String) session.getAttribute("userId");
    String userPw = (String) session.getAttribute("userPw");

    if (userId == null) {
      response.sendRedirect("session.jsp");
    } else {
      out.println(userId + "님 반갑습니다.");
    }
  %>
<a href="session_out.jsp">로그아웃</a>
</body>
</html>
