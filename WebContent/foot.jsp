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
    
    <title>My JSP 'foot.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/jkxyflower.css">
	

  </head>
  
  <body><br><br><br><br><br>
  <div class="foot">
   <div > 中国花卉协会会员 中国电子商务协会会员 ICP经营许可证：京336699 | 京ICP备336699号 Copyright © 2005-2015</div>
<br>
<div>中国鲜花礼品网       领先品牌，鲜花速递专家！</div></div>


  </body>
</html>
