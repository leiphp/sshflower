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

<title>My JSP 'browseFlowerPaging.jsp' starting page</title>

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
		<div ></div>
  
			<s:iterator value="#request.flowers" id="flower">
				<div class="newflower">
					<s:form action="shoppingAction" method="post" theme="simple">
						<img src="pic/<s:property value="#flower.picture"/>" />
						<br>
						<s:property value="#flower.flowername" />
						<br>
						<s:property value="#flower.price" />元
 <br>
 数量<s:textfield size="4" name="quantity"></s:textfield>
	<input type="hidden" name="id" value="<s:property value="#flower.flowerid" />">					
						
						<s:submit value="购买"></s:submit>
					</s:form>
				</div>
			</s:iterator>
			<div style="clear: both">
			 
			 <s:set name="pager" value="#request.page" />
					<s:if test="#pager.hasFirst">
						<a href="browseFlowerPaging.action?currentPage=1">首页</a>
					</s:if>
					<s:if test="#pager.hasPrevious">
						<a
							href="browseFlowerPaging.action?currentPage=
								<s:property  value="#pager.currentPage-1"/>">上一页</a>
					</s:if>
					<s:if test="#pager.hasNext">
						<a
							href="browseFlowerPaging.action?currentPage=
							<s:property  value="#pager.currentPage+1"/>">下一页</a>
					</s:if>
					<s:if test="#pager.hasLast">
						<a
							href="browseFlowerPaging.action?currentPage=
							<s:property  value="#pager.totalPage"/>">尾页</a>
					</s:if>
					<br>
					当前第
					<s:property value="#pager.currentPage" />
					页, 总共
					<s:property value="#pager.totalPage" />
					页
			 
			 </div>
		</div>


	</div>

	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
