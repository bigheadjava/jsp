<%@page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>JSP学习</title>
	
	<!-- 引入Bootstrap必须的css文件 -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.css">
	<!-- 引入Bootstrap的主题样式 -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap-theme.css">
	
	<style>
		img {
			width: 100%;
			height: 100%;
		}
		
	</style>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				 <%@include file="base/header.jsp"%>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12">
				<h1><a href="<%=request.getContextPath()%><%=request.getContextPath()%><%=request.getContextPath()%>001.jsp?name=张三">第一个jsp例子</a></h1>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12">
				 <%@include file="base/footer.jsp"%>
			</div>
		</div>
	</div>

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.12.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
</body>
</html>