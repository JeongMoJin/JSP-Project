<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-16
  Time: 오후 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <p>이 페이지는 5초 마다 새로고침 됩니다.</p>
 <%--
  reponse 내장 객체로 5초마다 JSP 페이지 갱신하기
  1) 5초마다 JSP 페이지가 갱신되도록 response 내장 객체의 setIntHeader() 메서드를 작성
  2) 5초마다 JSP 페이지가 갱신된 시간을 출력하도록 표현문 태그 작성
  --%>
  <%
    response.setIntHeader("Refresh", 5);
  %>
  <p><%=(new java.util.Date())%></p>
</body>
</html>

