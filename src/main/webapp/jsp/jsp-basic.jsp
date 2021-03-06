<%@page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>JSP基础案例</title>
	
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
				<h1><a href="jsp001.jsp?name=张三" target="#">第一个jsp例子</a></h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h1><a href="jsp002.jsp?name=张三" target="#">请求转发&nbsp;&lt;jsp:forward&gt;</a></h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h1><a href="jsp004.jsp" target="#">请求转发&nbsp;&lt;jsp:forward&gt;&nbsp;多个参数</a></h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h1><a href="jsp006.jsp" target="#">静态包含:&nbsp;include指令</a></h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h1><a href="jsp007.jsp" target="#">动态包含:&nbsp;&lt;jsp:include&gt;</a></h1>
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