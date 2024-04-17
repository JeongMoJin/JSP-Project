<%--
  Created by IntelliJ IDEA.
  User: 평일 오전 계정
  Date: 2024-04-17
  Time: 오전 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
  String userid = request.getParameter("id");
  String password = request.getParameter("passwd");
  String[] hobby = request.getParameterValues("hobby"); // request.getParameter.Values 사용. 반환형은 String 배열
  String zipcode = request.getParameter("zipcode");
  String add01 = request.getParameter("address01");
  String add02 = request.getParameter("address02");
%>

    <p>아이디 : <%=userid%></p>
    <p>비밀번호 : <%=password%></p>
    <p> 취미 :
        <%
            if (hobby != null) {
                for (String s: hobby) {
                    out.println(" " + s);
                }
            }
        %>
    <p>우편번호 : <%=zipcode%>
    <p>주소 : <%=add01%>
    <p>상세주소 : <%=add02%>
</body>
</html>
