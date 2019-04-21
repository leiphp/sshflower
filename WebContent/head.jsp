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

<title>My JSP 'head.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/jkxyflower.css">


</head>

<body>
	<div class="head_left">
		<img src="pic/logo.jpg">
	</div>
</body>
<div class="head_right">
	<a href="index.jsp" target="_top">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<s:if test="#session.user!=null">
		<a href="logOut.action" target="_top">注销</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
			href="customer_main.jsp" target="_top">管理我的信息</a>
	</s:if>
	<s:else>
		<a href="login.jsp" target="_self">登录</a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="register.jsp"
			target="_self">注册</a>
	</s:else>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="showCart.jsp"
		target="_blank">购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>联系我们</a>
	<div></div>
	<br>

</div>
<div></div>
<br>

</html>
