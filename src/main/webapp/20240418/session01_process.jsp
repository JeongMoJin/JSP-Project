<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-18
  Time: 오전 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
 세션 설정하기
 1) 전송된 아이디 비번이 일치하면 세션 속성 이름 userID, userPW에 값을 설정하도록
 session 내장 객체의 setAttribute() 메서드 작성
 2) 일치하지 않으면 실패 메시지를 출력
 --%>
<%
    String userId = request.getParameter("id");
    String userPw = request.getParameter("passwd");

    if (userId.equals("admin") && userPw.equals("1234")) {
        session.setAttribute("userId", userId);
        session.setAttribute("userPw", userPw);
        out.println("세션 설정이 성공했습니다.<br>");
        out.println(userId + "님 환영합니다.");
        // 쿠키와는 다르게 response 객체에 세션을 담는 과정은 없음 -> 서버에 저장하기 때문에.
    } else {
        out.println("세션 설정이 실패했습니다.");
    }
%>

</body>
</html>
