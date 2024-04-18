<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-18
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    String userId = request.getParameter("id");
    String userPw = request.getParameter("passwd");

    if (userId.equals("admin") && userPw.equals("1234")) {
      Cookie cookieId = new Cookie("userId", userId);
      Cookie cookiePw = new Cookie("userPw", userPw);
      response.addCookie(cookieId);
      response.addCookie(cookiePw);

      out.println("쿠키 생성이 성공했습니다<br>");
      out.println(userId + "님 환영합니다.");
      response.sendRedirect("welcome.jsp");
    }
    else {
      out.println("쿠키 생성이 실패했습니다.");
    }
  %>

</body>
</html>
