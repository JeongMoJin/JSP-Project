<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-15
  Time: 오전 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    int count = 0; // 지역 변수 선언
  %>
  Page Count is
  <%
    out.println(++count); // 전역 변수 1증가
  %>
</body>
</html>
