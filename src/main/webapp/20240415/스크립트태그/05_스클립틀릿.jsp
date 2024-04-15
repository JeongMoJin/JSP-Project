<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-15
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%-- 스클립틀릿 태그에 지역변수 사용하기 --%>
  <%
    // 지역 변수 a, b에 값을 저장하도록 스크립틀릿 태그를 작성
    int a = 2;
    int b = 3;
    int sum = a + b;
    out.println("2 + 3 = " + sum);
  %>
</body>
</html>
