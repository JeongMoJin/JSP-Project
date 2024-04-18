<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-17
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
  <%--
  쿠키 생성하기
  1) 전송된 아이디와 비밀번호가 일치하면, 쿠키 이름 userId, userPw에 값을 설정하도록 Cookie 객체를 생성
  --%>
<body>
  <%
    String userId = request.getParameter("id");
    String userPw = request.getParameter("passwd");

    if (userId.equals("admin") && userPw.equals("1234")) { // 로그인 정보가 맞으면
      Cookie cookidId = new Cookie("userId", userId); // 쿠키 생성. Cookie 클래스를 이용해서 쿠키 객체 생성
      Cookie cookiePw = new Cookie("userPw", userPw);
      response.addCookie(cookidId); // response할 때 쿠키도 같이 보낼 것
      response.addCookie(cookiePw);

      out.println("쿠키 생성이 성공했습니다<br>");
      out.println(userId + "님 환영합니다.");
    } else {
      out.println("쿠키 생성이 실패했습니다.");
    }
  %>

</body>
</html>





