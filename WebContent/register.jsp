<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="ss" uri="/struts-dojo-tags"%>
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
<ss:head/>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="content">
		<div class="left">			 
         <s:action name="browseCatalog" executeResult="true"></s:action>
		</div>
		<div class="right">
		<div style="padding-left:200px;width: 600px;">
		<s:form action="addUser.action" method="post">
    <s:textfield label="用户名"  name="user.username"></s:textfield>
    <s:password label="密码" name="user.password"></s:password>
   <s:hidden name="user.role" value="customer"></s:hidden>
   <s:textfield  label="真实姓名"  name="userdetail.truename"></s:textfield>
    <s:radio label="性别" list="#{1:'男',0:'女'}" value="0" name="userdetail.xb"></s:radio>
   <tr><td></td><td>
   <ss:datetimepicker label="出生日期" name="userdetail.csrq"></ss:datetimepicker>
   </td></tr>
   <s:textfield label="E-mail" name="userdetail.email"></s:textfield>
   <s:textfield label="手机" name="userdetail.phone"></s:textfield>
   <s:textfield label="地址" name="userdetail.address"></s:textfield>
    <s:submit value="注册"></s:submit>
    </s:form></div>
			</div>
	</div>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
