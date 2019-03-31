<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-03-31
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>input</title>
  </head>
  <body>
  <%
    int num = (int)(Math.random()*26)+97 ;
    session.setAttribute("count",new Integer(0));
    session.setAttribute("save",num);
  %>
  <br><a href="index.jsp">去猜这个小写字母</a>
  </body>
</html>
