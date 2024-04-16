<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-16
  Time: 오후 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
      response.setHeader("Refresh", "5");
      Calendar calendar = Calendar.getInstance();
      String am_pm;
      int hour = calendar.get(Calendar.HOUR_OF_DAY);
      int minute = calendar.get(Calendar.MINUTE);
      int second = calendar.get(Calendar.SECOND);

      if (hour<12)
        am_pm = " AM";
      else {
        am_pm = " PM";
        hour = hour - 12;
      }
      String currentTime = hour + ":" + minute + ":" + second + am_pm;
    %>
  <p>현재 시간은 <b><%=currentTime %></b></p>
  <a href="response_data.jsp">구글 페이지로 이동하기</a>
</body>
</html>
