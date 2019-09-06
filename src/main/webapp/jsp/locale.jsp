<%@page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Locale测试</title>

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
				<p>
					客户优先使用的Locale:&nbsp;
					<c:out value="${firstLocale.displayName}"></c:out>
					<br>
					<c:out value="${firstLocale.language}"></c:out>
					<br>
					<c:out value="${firstLocale.country}"></c:out>
					<br>
				</p>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-lg-12">
				<p>
					客户所有Locale:&nbsp;
					<c:forEach var="tempLocale" items="${allLocales }" varStatus="status">
						第${status.count }个Locale:&nbsp;<br>
						<c:out value="${tempLocale.displayName}"></c:out>
						<br>
						<c:out value="${tempLocale.language}"></c:out>
						<br>
						<c:out value="${tempLocale.country}"></c:out>
					<br>
					</c:forEach>
				</p>
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