<%@page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>JSP学习</title>
	
	<!-- 引入Bootstrap必须的css文件 -->
	<link rel="stylesheet" type="text/css" href="/jsp/css/bootstrap.css">
	<!-- 引入Bootstrap的主题样式 -->
	<link rel="stylesheet" type="text/css" href="/jsp/css/bootstrap-theme.css">
	
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
				 <%@include file="../html/base/header.html"%>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12">
				<h1>这里将展示JSP学习案例链接</h1>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12">
				 <%@include file="../html/base/footer.html"%>
			</div>
		</div>
	</div>

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script type="text/javascript" src="/jsp/js/jquery-1.12.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script type="text/javascript" src="/jsp/js/bootstrap.js"></script>
</body>
</html>