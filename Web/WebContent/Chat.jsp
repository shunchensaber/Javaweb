<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<div style="width: 80;margin-left: 20%;">

<%@include file="../JSP/Chat_up.jsp" %>
</div>

</div>
<br>
<div>
<%@include file="../JSP/chat_down.jsp" %>
</div>
<div style="text-align: center;width: 20%; border-style: solid;border-color: green; ">
<%
LinkedList<String> list = (LinkedList<String>)application.getAttribute("userlist");

out.print("当前在线用户<br>");
if(list!=null)
{
	Iterator it = list.iterator();
	while(it.hasNext())
	{
		String next =(String)it.next();
		out.print(next+"<br>");
	}
}
	
%>
<br>
</div>
<p>当前网页已被访问：<%=application.getAttribute("count")%></p>

</body>
</html>