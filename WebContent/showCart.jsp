<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'showCart.jsp' starting page</title>

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
			<s:set value="#session.cart.items" id="items"></s:set>

			<s:if test="#items.size!=0">
				<s:iterator value="#items" id="item">
					<div style="text-align: left">
						<s:form action="updateCart.action" method="post">
							<div class="flowercheck">
								花名：
								<s:property value="value.flower.flowername" />
							</div>

							<div class="flowercheck">
								价格：
								<s:property value="value.flower.price" />
								元
							</div>
							<div class="flowercheck">
								数量：<input size="4" type="text" name="quantity"
									value="<s:property value="value.quantity"/>">
							</div>

							<input type="hidden" name="id"
								value="<s:property value="value.flower.flowerid"/>">
							<div class="flowercheck">
								<input type="submit" value="更新">
							</div>
						</s:form>
					</div>
				</s:iterator>


				<div style="clear: both;">
					<s:form action="checkOut" method="post">
						<s:submit value="提交订单"></s:submit>
					</s:form>
				</div>
			</s:if>
			<s:else>
		对不起，你购物车没有图书！！
		</s:else>

		</div>
	</div>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
