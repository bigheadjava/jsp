<%@page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>用户注销</title>

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

#div00 {
	padding-top: 5%;
}

#div01, div02, #div03 {
	padding-top: 2%;
}
</style>

</head>
<body>
	<%
		String loginName = (String) session.getAttribute("loginName");
		session.invalidate();
	%>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<img src="<%=request.getContextPath()%>/images/top1.jpg"
					class="img-responsive">
			</div>
		</div>
		<div class="row" id="div00">
			<div class="col-lg-12">
			再见，<%=loginName %>，您可以点击<h1><a href="login.jsp">登陆</a></h1>进行再次访问!
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