<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-03-27
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB2312" language="java" %>
<html>
<head>
    <title>inputString.jsp</title>
</head>
<body>
    <%
    String str = request.getParameter("boy");
    if (str==null){
        session.setAttribute("txt",new String());
    }else{
        session.setAttribute("txt",str);
    }
%>
    <form action="inputString.jsp" method="post" name="form">
        <p>输入字符串：</p>
        <input type="text" name="boy">
        <input type="submit" value="提交" name="submit">
    </form>
    <a href="computer.jsp">提交后点击此转到computer.jsp页面</a>
</body>
</html>
