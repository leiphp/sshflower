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
    
    <title>My JSP 'customer_main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/jkxyflower.css">
	
  </head>
  
  <body>
  <jsp:include page="head.jsp"></jsp:include>
    <div class="content">
		<div class="left">

		<a href="modifyPassword.jsp" target="_top">修改密码</a><br><br>
		<a href="modifyDetail.jsp" target="_blank">修改个人信息</a><br><br>	
		


		</div>
		<div class="right">
		<s:action name="browseNewFlower" executeResult="true"></s:action>
		</div>
	</div>
	<jsp:include page="foot.jsp"></jsp:include>
  </body>
</html>
