<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	
	String b =(String)(request.getParameter("content"));
	String user = (String)(session.getAttribute("username"));
	String re="";
	if(b==null)
	{
		b="";
	}
	else
	{
		Date d = new Date();
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String now = df.format(d);
	    now = "("+now+")";
		 re+= now+"<b>"+user+"</b>"+" 说 "+b;
	}
	
 
	if(a==null)
	{
		application.setAttribute("chatcontent","");
		
		
	}
	else
	{
		if(b!="")
		application.setAttribute("chatcontent",a+"<br>"+re);
	}
	out.print(application.getAttribute("chatcontent"));

%>
</body>
</html>