<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'basicInput.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<form action="infoInput.jsp" method="post">
    	请输入文本框的数目和复选框中包含条目的数目：<br>
		姓名：<input type="text" name="name"><br>
		性别：<input type="text" name="sex"><br>
		文本框数目：<input type="text" name="num1"><label>范围：1-9</label><br>
		复选框包含条目数：<input type="text" name="num2"><label>范围：1-9</label><br>
  		<input type="submit" value="填写具体信息" name="submit">
  	</form>
  </body>
</html>
