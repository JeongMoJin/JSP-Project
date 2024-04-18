<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-18
  Time: 오전 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    session.invalidate();
    response.sendRedirect("session.jsp");
  %>
</body>
</html>
