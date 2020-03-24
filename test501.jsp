<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>test</title>
</head>
<body>
登录测试
<form action="test501.jsp" methoe="post">
用户名：<input type="text" name="uname"><br>
密码：<input type="password" name="upass"><br>
<input type="submit" value="登录">
<input type="reset" value="重置">
</form>
<%//直接通过一个固定的密码
	 String name=request.getParameter("uname");
	 String pass=request.getParameter("upass");
	 if(!(name==null||name.equals("")||pass==null||pass.equals("")))
	 {
		 if("test".equals(name) && "1234".equals(pass))
		 {
			 //如果登录成功，设置session属性范围
			 session.setAttribute("name",name);
			 response.setHeader("refresh", "2;URL=test502.jsp");
			%>
			<h3>用户登录成功,如果2秒后没有跳转请单击<a href="test502.jsp">这里</a>手动跳转</h3> 
			<%
		 }
		 else
		 {
			 %>
			<h3>用户登录失败，请重新<a href="test501.jsp">登录</a></h3> 
			<%
		 }
	 }
%>
</body>
</html>