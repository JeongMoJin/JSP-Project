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
  <%-- 선언문 태그 사용 예 : 전역변수 선언 --%>
  <%!
    int count = 0; // 전역변수 count를 0으로 초기화
  %>
  Page Count is
  <%
    out.println(++count); // 전역 변수 1증가. 새로 고침을 하면 숫자가 증가
  %>

</body>
</html>
