<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.List"%>
<%@page import="java.util.LinkedList"%>

<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check login</title>
</head>
<body>

<%
String id = request.getParameter("id");
String pass = request.getParameter("password");
out.print(id);
out.print(pass);
if((id.equals("开心小麻花")||id.equals("开心小龙虾"))&&pass.equals("123456"))
	{
	if(application.getAttribute("count")==null)
		application.setAttribute("count",1);
	else
		application.setAttribute("count", (int)application.getAttribute("count")+1);
	session.setAttribute("username", id);
	
	LinkedList<String> list;
	if(application.getAttribute("userlist")==null)
	{
		 list = new LinkedList();
	}
	else
	{
		 list = (LinkedList<String>)application.getAttribute("userlist");
	
	}
	list.add(id);
	application.setAttribute("userlist", list);
	response.sendRedirect("Chat.jsp");
	}
else
	response.sendRedirect("error.html");


%>
</body>
</html>