<%@page language="java" pageEncoding="utf-8"%>
<img src="<%=request.getContextPath()%>/images/top1.jpg"
	class="img-responsive">

<nav class="navbar navbar-default" role="navigation">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#menu">
			<span class="sr-only">展开导航</span> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="jsp/logout.jsp">注销</a>
	</div>
	<div class="collapse navbar-collapse" id="menu">
		<ul class="nav navbar-nav" >
			<li class="active"><a
				href="<%=request.getContextPath()%>/jsp/index.jsp">首页</a></li>
			<li><a href="<%=request.getContextPath()%>/jsp/jsp-basic.jsp">JSP基础</a></li>
			<li><a href="<%=request.getContextPath()%>/jsp/access-javabean.jsp">JSP访问JavaBean</a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">JSTL标签 <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#">JSTL Core标签</a></li>
					<li class="divider"></li>
					<li><a href="#">JSTL I18N标签</a></li>
					<li class="divider"></li>
					<li><a href="#">JSTL SQL标签</a></li>
					<li class="divider"></li>
					<li><a href="#">JSTL Functions标签</a></li>
					<li class="divider"></li>
				</ul></li>
		</ul>
	</div>
</nav>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-1.12.js"></script>
<script>
	
	$(function () {
        $(".navbar-nav").find("li").each(function () {
            var a = $(this).find("a:first");
            if ($(a).attr("href") == location.pathname) {
                $(this).addClass("active");
            } else {
                $(this).removeClass("active");
            }
        });
    });
</script>