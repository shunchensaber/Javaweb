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
	session.setAttribute("username", id);
	response.sendRedirect("Register.jsp");
	
	}
else
	response.sendRedirect("error.html");


%>
</body>
</html>