<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-18
  Time: 오전 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    boolean isLogin = false;
    String userId = "";
    Cookie[] cookies = request.getCookies(); // request에서 쿠키를 얻어옴
    out.println("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
    out.println("============================<br>");
    for (int i = 0; i < cookies.length; i++) {
        out.println("설정된 쿠키의 속성 이름 [ " + i + " ] : " + cookies[i].getName() + "<br>");
        out.println("설정된 쿠키의 속성 값 [ " + i + " ] : " + cookies[i].getValue() + "<br>");
        out.println("---------------------------<br>");

        if (cookies[i].getName().equals("userId") && cookies[i].getValue() != null) {
            // userId라는 쿠키 이름이 있고 value가 null이 아니면 로그인 한 것으로 간주
            isLogin = true;
            userId = cookies[i].getValue();
        }
    }

    if (isLogin) {
        out.print(userId + "님 반갑습니다.");
    } else {
        response.sendRedirect("cookie.jsp");
    }
%>

<a href="cookie_out.jsp">로그아웃</a>
</body>
</html>
