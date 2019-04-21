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
    
    <title>My JSP 'newFlower.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body><div>
 
  <div>新品展示</div><br>
  <s:set value="#request.newflowers" id="newflower"></s:set>
  <s:iterator value="#newflower"  id="flower">
 <div class="newflower">
 <s:form theme="simple" action="shoppingAction" method="post">
 <img src="pic/<s:property value="#flower.picture"/>"/>
 <br>
 <s:property value="#flower.flowername"/>
  <br>
 <s:property value="#flower.price"/>元
 <br>
 数量<s:textfield size="4" name="quantity"></s:textfield> 
 <input type="hidden" name="id" value="<s:property value="#flower.flowerid" />">	
 <s:submit value="购买"></s:submit>
 </s:form>
 </div>
  </s:iterator></div>
  </body>
</html>
