<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-18
  Time: 오전 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%--
   세션에 저장된 모든 세션 속성 삭제하기.
   1) 요청에 포함된 클라이언트의 세션이 유효하면 유효한 메시지를 출력하고,
   그렇지 않으면 유효하지 않은 메시지를 출력하도록 작성
   2) 세션에 저장된 모든 세션 속성을 삭제하도록 session 내장 객체의 invalidate() 메서드를 작성
   --%>
  <%
    String userId = (String) session.getAttribute("userId");
    String userPw = (String) session.getAttribute("userPw");

    out.println("설정된 세션 이름 userId : " + userId + "<br>");
    out.println("설정된 세션 값 userPw : " + userPw + "<br>");

    // request.isRequestdSessionIdValid() : request에 포함된 sessionId가 유효한지 검사. 반환형은 boolean.
    if (request.isRequestedSessionIdValid() == true) {
      out.print("세션이 유효합니다.");
    } else {
      out.print("세션이 유효하지 않습니다.");
    }

    session.invalidate();
  %>
<p><h4>----- 세션을 삭제한 후 ------</h4></p>
<%
  if(request.isRequestedSessionIdValid() == true) {
    out.print("세션이 유효합니다.");
  } else {
    out.print("세션이 유효하지 않습니다.");
  }
%>
</body>
</html>
