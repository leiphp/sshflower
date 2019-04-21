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
  
  <body >
    <jsp:include page="head.jsp"></jsp:include>
    <div class="content">
		<div class="left">
		

		</div>
		<div class="right">
			<div style="padding-left:200px;width: 600px;">
		<s:form action="updateUserDetail.action" method="post">
  
 
   <s:textfield  label="真实姓名" value="%{#session.user.userdetail.truename}" name="userdetail.truename"></s:textfield>
    <s:radio label="性别" list="#{1:'男',0:'女'}" value="%{#session.user.userdetail.xb}" name="userdetail.xb"></s:radio>
   <tr><td></td><td>
    <s:textfield  label="出生日期"  value="%{#session.user.userdetail.csrq}" name="userdetail.csrq"></s:textfield>
   </td></tr>
   <s:textfield label="E-mail" name="userdetail.email" value="%{#session.user.userdetail.email}"></s:textfield>
   <s:textfield label="手机" name="userdetail.phone" value="%{#session.user.userdetail.phone}"></s:textfield>
   <s:textfield label="地址" name="userdetail.address" value="%{#session.user.userdetail.truename}"></s:textfield>
    <s:submit value="确认"></s:submit>
    </s:form></div></div>
   </div>
  </body>
</html>
