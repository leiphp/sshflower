<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/jkxyflower.css">
	

  </head>
  
  <body><jsp:include page="head.jsp"></jsp:include>
 <div style="clear: both;float:right;padding-top: 100px;padding-right: 200px;">
  <center>
   <s:property value="#request.msg"/><br><br>
  顾客登录
 
    <s:form action="checkUser" method="post">
    <s:textfield  name="user.username"></s:textfield>
    <s:password name="user.password"></s:password>
   <s:hidden name="user.role" value="customer"></s:hidden>  
    <s:submit></s:submit>
    </s:form>
    </center></div>
  </body>
</html>
