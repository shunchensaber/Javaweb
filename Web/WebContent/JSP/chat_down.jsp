<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

</script>
</head>
<body>

<hr>
<%
out.print("用户:"+session.getAttribute("username")+"说:");
%>
<form action="http://localhost:8080/Web/Chat.jsp">
<hr>
内容:<input type="text" style= "width: 100px;" name="content";>
<button type="submit" >提交</button><br><br>
<button ><a href="./JSP/logout.jsp">离开</a></button>
</form>


</body>
</html>