<%@ page import="java.util.Enumeration" %>
<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-16
  Time: 오전 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--
     request 내장 객체로 모든 HTTP 헤더 정보 값 출력하기
     1) 모든 헤더 이름을 가져오도록 request 내장 객체의 getHeaderNames() 메서드를 호출하고,
     이를 모두 저장하도록 Enumeration 객체 타입의 변수 en을 작성.
     2) Enumeration 객체 타입 변수 en의 hasMoreElements() 메서드를 통해 저장된 헤더 이름이 있을 때까지 반복하도록 while 문 작성
     3) 현재 헤더 이름을 가져오도록 Enumeration 객체 타입 변수 en의 nextElement() 메서드를 작성
     4) 설정된 헤더 이름의 값을 가져오도록 request 내장 객체의 getHeader() 메소드를 작성

     예 :
     uesr-agent : 사용자의 브라우저 정보
     referer : 현재 페이지로 이동해오기 바로 전 페이지의 주소
     --%>
  <%
    Enumeration en = request.getHeaderNames();
    while (en.hasMoreElements()) {
      String headerName = (String) en.nextElement();
      String headerValue = request.getHeader(headerName);
  %>
  <%=headerName%> : <%=headerValue%><br>
  <%
    }
  %>
</body>
</html>
