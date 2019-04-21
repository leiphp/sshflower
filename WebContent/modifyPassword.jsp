<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modifypwd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/jkxyflower.css">
	
<script type="text/javascript" src="js/modpwd.js" charset="utf-8"></script>
  </head>
  
  <body onload="focuspwd()">
    <jsp:include page="head.jsp"></jsp:include>
    <div class="content">
		<div class="left">
		<a href="modifyPassword.jsp" target="_self">修改密码</a><br><br>
		<a href="modifyDetail.jsp"" target="_self">修改个人信息</a><br><br>	
		<a href="index.jsp" target="_self">选购花品</a><br>	
     


		</div>
		<div class="right">
			<div style="padding-left:200px;width: 600px;">
   <s:form name="form1"  onsubmit="return modpwd()" action="updateUserPassword.action" method="post">
<tr><td><td><s:property value="#request.msg"/> </td></tr>
   <s:password name="pwd1"  label="旧密码"></s:password>
    <s:password name="pwd2"  label="新密码"></s:password>
     <s:password name="password"  label="再次输入新密码"></s:password>
    <s:submit value="确认"></s:submit>
   </s:form></div></div>
   </div>
  </body>
</html>
