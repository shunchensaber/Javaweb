<%@page import="java.util.LinkedList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登出</title>
</head>
<body>
<%

String user1 =(String)session.getAttribute("username");	
LinkedList<String> list2 = (LinkedList<String>)application.getAttribute("userlist");
list2.remove(user1);
application.setAttribute("userlist", list2);
session.invalidate();
response.sendRedirect("../MyHomePage.jsp");


%>

</body>
</html>