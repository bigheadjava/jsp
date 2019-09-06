<%@page language="java" pageEncoding="utf-8"%>
<%@page isErrorPage="true"%>
<%@page import="com.cheer.bean.UserBean"%>
<%@page import="java.util.HashMap"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>JSTL标签</title>

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
			<div class="col-lg-3">
				&lt;c:set&gt;为String类型设置值
			</div>
			<div class="col-lg-9">
				<c:set var="var_1" value="变量var_1的值" scope="session"></c:set>		
				<c:out value="${var_1 }"></c:out>
				&nbsp;|&nbsp;	
				从session中获取变量var_1的值: <%= session.getAttribute("var_1") %>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-3">
				&lt;c:set&gt;为JavaBean设置属性值
			</div>
			<div class="col-lg-4">
				<jsp:useBean id="userBean" class="com.cheer.bean.UserBean"
					scope="request"></jsp:useBean>
				&lt;c:set&gt;之前userBean对象name属性值: 
				<c:out value="${userBean.name }" default="无名氏" />
			</div>
			<div class="col-lg-5">
				<c:set target="${userBean}" property="name" value="张三"></c:set>
				&lt;c:set&gt;之后userBean对象name属性值: 
				<c:out value="${userBean.name }" default="无名氏"></c:out>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-3">
				&lt;c:set&gt;为Map对象的key设置属性值
			</div>
			<div class="col-lg-4">
				<jsp:useBean id="iMap" class="java.util.HashMap" scope="request"></jsp:useBean>
				<c:set target="${iMap }" property="n1" value="一"></c:set>
				<c:set target="${iMap }" property="n2" value="二"></c:set>
				<c:out value="${iMap.n1 }" default="获取失败" />
			</div>
			<div class="col-lg-5">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3">
				&lt;c:remove&gt;删除变量
			</div>
			<div class="col-lg-4">
					&lt;c:remove&gt;之前变量var_1的值
					<c:out value="${var_1 }" default="Unknow variable"></c:out>
			</div>
			<div class="col-lg-5">
				<c:remove var="var_1"/>
				&lt;c:remove&gt;之后变量var_1的值
				<c:out value="${var_1 }" default="Unknow variable"></c:out>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3">
				&lt;c:catch&gt;捕获异常
			</div>
			<div class="col-lg-4">
				<c:catch var="ex">
					<%
						int a = 11/0;
					%>
				</c:catch>
				<c:out value="${ex.message}" default="No Exception"></c:out>
			</div>
			<div class="col-lg-5">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3">
				&lt;c:if&gt;标签
			</div>
			<div class="col-lg-4">
				<c:set target="${userBean }" property="gender" value="M"></c:set>
				判断userBean对象的gender:&nbsp;
				<c:if test="${userBean.gender eq 'M' }">
					<c:out value="这是男人"></c:out>
				</c:if>
				<c:if test="${userBean.gender eq 'F' }">
					<c:out value="这是女人"></c:out>
				</c:if>
			</div>
			<div class="col-lg-5">
				把逻辑表达式的值保存在变量conResult中:&nbsp;
				<c:if test="${userBean.gender eq 'M' }" var="conResult"></c:if>
				<c:out value="${conResult }"></c:out>
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