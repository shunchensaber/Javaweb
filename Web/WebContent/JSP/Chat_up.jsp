<%@page import="com.sun.glass.ui.CommonDialogs.Type"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	
	String a =(String)(application.getAttribute("chatcontent"));
	
	
	out.print(a.toString());
 
	if(a.equals("null"))
	{
		//application.setAttribute("chatconten","");
		out.print(a);
		
	}

%>
</body>
</html>