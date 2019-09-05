<%@page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>EL访问数组和集合</title>

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
					获取数组skillArray中第2个元素: &nbsp; ${skillArray[1]}
				</h1>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12">
				<h1>
					获取List - cityList中第2个元素: &nbsp; ${cityList[1]}
				</h1>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12">
				<h1>
					获取Set - languageSet中第1个元素: &nbsp; ${languageSet.toArray()[0]}
					<br>
					获取Set - languageSet中第2个元素: &nbsp; ${languageSet.toArray()[1]}
					<br>
					获取Set - languageSet中第3个元素: &nbsp; ${languageSet.toArray()[2]}
					<br>
					获取Set - languageSet中第4个元素: &nbsp; ${languageSet.toArray()[3]}
					<br>
					获取Set - languageSet中第5个元素: &nbsp; ${languageSet.toArray()[4]}
					<br>
				</h1>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12">
				<h1>
					获取Map - studentMap中第1个元素的值: &nbsp; ${studentMap.S001}
					<br>
					获取Map - studentMap中第2个元素的值: &nbsp; ${studentMap.S002}
					<br>
					获取Map - studentMap中第3个元素的值: &nbsp; ${studentMap.S003}
					<br>
				</h1>
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