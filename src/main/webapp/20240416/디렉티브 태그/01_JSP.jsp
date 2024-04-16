<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-16
  Time: 오전 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setAttribute("RequestAttribute", "request 내장 객체");
    %>
    ${requestScope.RequestAttribute}
    <script>
        const str = '문자열'
        alert(`${str} 입니다.`)
    </script>

</body>
</html>
