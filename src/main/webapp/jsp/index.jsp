<%@page language="java" pageEncoding="utf-8"%>
<%@page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<title>JSP学习</title>

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
	<%
		String userName = request.getParameter("userName");
		if (userName == null) {
			userName = (String) session.getAttribute("loginName");
			if (userName == null) {
				String msg = URLEncoder.encode("对不起，请先进行登陆!","utf-8");
				request.getRequestDispatcher("login.jsp?msg=" + msg).forward(request, response);
				
			}
		} else {
			session.setAttribute("loginName", userName);
		}
	%>

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<%@include file="base/header.jsp"%>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				
				<%
						String loginName = (String)session.getAttribute("loginName");
				if(loginName != null) {
						Integer count = (Integer)application.getAttribute("online_user_count");
						out.println("欢迎您，" + loginName + "! 当前在线用户 " + count.intValue() + "人! </br>");
						out.println("Session ID: " + session.getId());
					}
				%>
				<h1>这里将展示JSP学习案例链接</h1>
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