<%@tag pageEncoding="utf-8" %>
<%@attribute name="number" required="true" %>
<%@variable name-given="message" variable-class="java.lang.String" scope="AT_END" %>
<%
    String mess = "";
    Integer integer = (Integer)session.getAttribute("save");
    int guessNumber = 0;
    int realnumber = integer.intValue();
    boolean boo = true;
    try {
        guessNumber = Integer.parseInt(number);
    }catch (Exception exp){
        boo = false;
    }
    if (boo){
        if (guessNumber==realnumber){
            int n = ((Integer)session.getAttribute("count")).intValue();
            n = n+1;
            session.setAttribute("count",new Integer(n));
            mess = "你猜对了，这是第"+n+"次猜测";
        }else if (guessNumber>realnumber){
            int n = ((Integer)session.getAttribute("count")).intValue();
            n = n+1;
            session.setAttribute("count",new Integer(n));
            mess = "你猜大了，这是第"+n+"次猜测";
        }else if (guessNumber<realnumber){
            int n = ((Integer)session.getAttribute("count")).intValue();
            n = n+1;
            session.setAttribute("count",new Integer(n));
            mess = "你猜小了，这是第"+n+"次猜测";
        }else if (number.equals("你还没有开始猜测")){
            mess = "你还没有开始猜测";
        }
        jspContext.setAttribute("message",mess);
    }
    else {
        jspContext.setAttribute("message","请输入你的猜测");
    }
%>