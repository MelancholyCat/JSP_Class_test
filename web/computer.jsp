<%--
  Created by IntelliJ IDEA.
  User: Atlantis
  Date: 2019-03-27
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB2312" language="java" %>
<html>
<head>
    <title>computer.jsp</title>
</head>
<body>
    <%
        String textContent = new String();
        try {
            textContent = (String) session.getAttribute("txt");
            if (textContent==""&&textContent.isEmpty()){
                textContent = new String();
            }else{
                byte b[] = textContent.getBytes("ISO-8859-1");
                textContent = new String(b);
            }
        }catch (Exception e){
            out.print(e.toString());
        }
    %>
    ×Ö·û´®"<%= textContent%>"<br>³¤¶ÈÎª<%=textContent.length()%>
</body>
</html>
