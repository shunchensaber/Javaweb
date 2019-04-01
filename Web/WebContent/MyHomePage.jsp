<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
@import url("Myhomepage.css");
@import url("./css/login.css");


</style>
<script type="text/javascript">
		function check() {
			
		
		var id = document.getElementsByTagName("input")[0].value;
		var pass = document.getElementById("password").value;
			
			if(id=="")
				alert("请输入用户名");
			else if(pass=="")
				alert("请输入密码");
		}
	</script>
<meta charset="UTF-8">
<title>文件分享平台</title>
</head>
<body>



<table style="background-image: url('image/header_bg.jpg');width: 100%">
<tr>
<th><!--  <img src="./image/logo.png" style="padding-left: 150px">--></th>
	<th >
	<p class="a" style="padding-top: 30px;padding-bottom: 0px;margin-bottom: 0px">
	<font face="华文云彩">文件分享平台</font>
	</th>
	</table>
	
<div class="wrap" id="wrap">
	<div class="logGet">
			<!-- 头部提示信息 -->
			
				<p style="text-align: center;font-size: 28px;">登录</p>
			
			<form action="http://localhost:8080/Web/Login_deal.jsp">
			<!-- 输入框 -->
			<div class="lgD">
				
				<input type="text" name ="id"
					placeholder="输入用户名" style = "width: 280px;margin-left: 20px " />
			</div>
			<div class="lgD">
				
				<input type="text" id="password" name="password"
					placeholder="输入用户密码" style = "width: 280px;margin-left: 20px;"/>
			</div>
			<div class="logC">
				<button id="button1" onclick="check()">登 录</button>
				<button     id= "button1"   type="reset">重置</button>
			</div>
			</form>
			<a href="http://localhost:8080/Web/Register.jsp" ><p style="text-align: center;">注册一个新用户</p></a>
			
			
		</div>
</div>


	 
	            

</body>
</html>