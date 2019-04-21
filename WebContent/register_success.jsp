<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
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
	<jsp:include page="head.jsp"></jsp:include>
	<div class="content">
		<div class="left">			 
         <s:action name="browseCatalog" executeResult="true"></s:action>
		</div>
		<div class="right">
		注册成功！欢迎<a href="login.jsp" target="_self"> 登录</a>
			</div>
	</div>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
