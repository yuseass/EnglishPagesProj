<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'infoInput.jsp' starting page</title>
    
	

  </head>
  
  <body>
  		<%  
             String num1=request.getParameter("num1");
             String num2=request.getParameter("num2");
             
             session.setAttribute("num1",num1);
             session.setAttribute("num2",num2);
       	%>
      
    <form action="englishPage.jsp" method="post">
    	<font face="verdana">
    	用户  ${param.name} &nbsp;
    	<c:if test="${param.sex eq '男' }">先生</c:if>
    	<c:if test="${param.sex eq '女' }">女士</c:if>
    	您好！<br>
    	</font>
    	<c:forEach var="i" begin="1" end="${param.num1}" step="1">
    		文本框${i}标题:
    		<input type="text" name="TextboxTitle${i}">
    		<br>
    	</c:forEach>
    	复选框标题：
    	<input type="text" name="CheckboxTitle">
    	<br>
    	<c:forEach var="i" begin="1" end="${param.num2}" step="1">
    		复选框${i}value值:
    		<input type="text" name="CheckboxValue${i}">
    		复选框${i}文本:
    		<input type="text" name="CheckboxText${i}">
    		<br>
    	</c:forEach>
    	<input type="submit" value="生成英文界面">
	
    </form>
  </body>
</html>
