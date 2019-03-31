<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-03-31
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="guessNumber" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>guess.jsp</title>
</head>
<body>
    <%
        String str = request.getParameter("guessNumber");
        if (str==null)
            str = "*";
        if (str.length()==0)
            str = "*";
    %>
<guessNumber:GuessTag number="<% = str%>"/>
当前猜测结果：<%=message%>
<%
    if (message.startsWith("你猜对了")){
%>      <br><a href="index.jsp">重新获取随机值</a>
<%  }
    else{
%>        <br>输入你的猜测：
    <form action="" method="post" name=form>
        <input type="text" name="guessNumber">
        <input type="submit" name="submit" value="送出">
    </form>
<%    }
%>
</body>
</html>
