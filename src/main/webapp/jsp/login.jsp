<%@page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>用户登陆</title>

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

#div01,div02,#div03 {
	padding-top: 2%;
}
</style>

</head>
<body>
	<%
					
		String loginName = (String)session.getAttribute("loginName");
		if(loginName != null) {	
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	%>
	<div class="container">
	<form method="post" action="/jsp/login" class="form-horizontal">
		<div class="row">
			<div  class="col-lg-12">
				<img src="<%=request.getContextPath()%>/images/top1.jpg" class="img-responsive">
			</div>
		</div>
		<div class="row" id="div00">
			<div  class="col-lg-12">
				<% if(request.getParameter("msg") != null) {%>
					<font color="red"><%= request.getParameter("msg") %></font>
				<% }%>
			</div>
		</div>	
		<div class="row" id="div01">
			<div class="form-group">
				<label for="userName" class="col-lg-4 text-right">用户名</label>
				<div class="col-lg-4">
					<input type="text" id="userName" name="userName"
						class="form-control" />
				</div>
				<div class="col-lg-4"></div>
			</div>
		</div>
		<div class="row" id="div02">
			<div class="form-group">
				<label for="userPsw" class="col-lg-4 text-right">密&nbsp;&nbsp;&nbsp;码</label>
				<div class="col-lg-4">
					<input type="password" id="userPsw" name='userPassword'
						class="form-control" />
				</div>
				<div class="col-lg-4"></div>
			</div>
		</div>
		<div class="row" id="div03">
			<div class="form-group ">
				<div class="col-lg-5"></div>
				<div class="col-lg-3">
					<button type="submit" class="btn btn-success">登 陆</button>
				</div>
				<div class="col-lg-4"></div>
			</div>
		</div>
		</form>
	</div>

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/jquery-1.12.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
</body>
</html>