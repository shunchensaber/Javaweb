<%@page import="sun.security.krb5.internal.Krb5"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购物车</title>
</head>
<body>
<%
HashMap<String,Integer> hs;
if(application.getAttribute("hashmap")==null)
	{
		hs = new HashMap();
	}
else{
		hs = (HashMap<String,Integer>)application.getAttribute("hashmap");
}
String items[]=request.getParameterValues("item");
if(items!=null)
{
for(int i = 0;i<items.length;i++)
{
	String temp=items[i];
	if(hs.containsKey(temp))
		hs.put(temp, hs.get(temp)+1);
	else
		hs.put(temp, 1);
		
	
	
}
}
application.setAttribute("hashmap", hs);
Set<String> keyset = hs.keySet();
Iterator<String> it = keyset.iterator();

%>
<h1 align="center"><p style="color: blue;">欢迎光临，你选购的商品有</p></h1>
<table border="1" align="center" width="80%" >
<tr>
<th align="center">商品名称</th>
<th align="center">购买个数</th>
<tr>
<%while(it.hasNext()){ %>
<%String key = it.next(); %>
<tr><td align="center"><%=key %></td><td align="center"><%=hs.get(key) %></td></tr>

<%} %>
</table>
</body>
</html>