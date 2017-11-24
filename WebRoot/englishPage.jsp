<%@page import="bean.TranslatorBean"%>
<%@page import="java.lang.reflect.Parameter"%>
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
    
    <title>My JSP 'englishPage.jsp' starting page</title>
    
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
  		<%
  			String s1=session.getAttribute("num1").toString();
  			String s2=session.getAttribute("num2").toString();
  			int num1=Integer.parseInt(s1);
  			int num2=Integer.parseInt(s2);		
  		%>
    	以下是生成的英文界面：<br>
    	<c:forEach var="i" begin="1" end="<%=num1 %>" step="1">
    		<jsp:useBean id="TextboxTitle" class="bean.TranslatorBean" scope="session"/>
    		
    		<c:set var="x"  value="TextboxTitle${i}" scope="session"/>
    		
    		<c:set target="${TextboxTitle}" property="chineseWord" value="${param[x]}"/>

    		<c:out value="${TextboxTitle.translate()}" />
    		
    		<input type="text" >
    		<br>
    	</c:forEach>
    	
			<jsp:useBean id="CheckboxTitle" class="bean.TranslatorBean" scope="session"/>
    		<c:set target="${CheckboxTitle}" property="chineseWord" value="${param.CheckboxTitle}"/>
    		<c:out value="${CheckboxTitle.translate()}" />    	

    	<c:forEach var="i" begin="1" end="<%=num2 %>" step="1">
    		<c:set var="a"  value="CheckboxValue${i}" scope="session"/>
    		
    		<input type="checkbox" value="${param[a] }">

    		<jsp:useBean id="CheckboxText" class="bean.TranslatorBean" scope="session"/>
    		
    		<c:set var="b"  value="CheckboxText${i}" scope="session"/>
    		
    		<c:set target="${CheckboxText}" property="chineseWord" value="${param[b]}"/>

    		<c:out value="${CheckboxText.translate()}" />

    		
    	</c:forEach> 	
  </body>
</html>
