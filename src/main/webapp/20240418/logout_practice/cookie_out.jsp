<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-18
  Time: 오전 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    Cookie[] cookies = request.getCookies();

    for (int i = 0; i < cookies.length; i++) {
      cookies[i].setMaxAge(0);
      response.addCookie(cookies[i]);
    }
    response.sendRedirect("cookie.jsp");
  %>
</body>
</html>
