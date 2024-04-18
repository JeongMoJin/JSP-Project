<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-18
  Time: 오전 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%--
  세션 아이디와 웹 사이트에서 유지한 시간 출력하기.
  1) 고유한 세션 내장 객체의 아이디를 가져오도록 session 내장 객체의 getId() 메서드를 작성.
  2) 세션에 마지막으로 접근한 시간을 가져오도록 session 내장 객체의 getLastAccessedTime() 메서드를 작성.
  3) 세션이 생성된 시간을 가져오도록 session 내장 객체의 getCreationTime() 메서드를 작성.
  4) 웹 사이트에 머문 시간을 계산하도록 작성.
  --%>
  <%
    String sessinId = session.getId();
    // 세션에 마지막으로 접근한 시간
    long lastTime = session.getLastAccessedTime();  // 단위가 1/1,000초
    // 세션이 생성된 시간
    long startTime = session.getCreationTime();  // 단위가 1/1,000초

    long usedTime = (lastTime - startTime) / 1000;

    out.println("세션 아이디 : " + sessinId + "<br>");
    out.println("요청 시작 시간  : " + startTime + "<br>");
    out.println("요청 마지막 시간  : " +  lastTime + "<br>");
    out.println("웹 사이트에서 경과 시간  : " + usedTime + "초<br>");
  %>
</body>
</html>
