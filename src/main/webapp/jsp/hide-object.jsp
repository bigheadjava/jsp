<%@page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>EL隐含对象</title>

<!-- 引入Bootstrap必须的css文件 -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css">
<!-- 引入Bootstrap的主题样式 -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css">

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
				<h1>
					表示Http请求的数据: 
				</h1>
				<h4>
					Host: &nbsp; ${header.host } <br>
					Param: &nbsp; ${param.userName } <br>
				</h4>
				<hr>
				<h4>
					从request范围内获取requestAttr: ${requestScope.requestAttr}<br>
					从session范围内获取requestAttr: ${sessionScope.requestAttr}<br>
					从request范围内获取sessionAttr: ${requestScope.sessionAttr}<br>
					从session范围内获取sessionAttr: ${sessionScope.sessionAttr}<br>
					从application范围内获取applicationAttr: ${applicationScope.applicationAttr}<br>
				</h4>
				<hr>
				<h4>
					获取Web应用参数: ${initParam.ProjectName}
				</h4>
			</div>
		</div>
		

		<div class="row">
			<div class="col-lg-12">
				<%@include file="base/footer.jsp"%>
			</div>
		</div>
	</div>

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/jquery-1.12.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
</body>
</html>