<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 下拉菜单 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'popMenu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

ul {
	list-style: none;
}

.wrap {
	width: 330px;
	height: 30px;
	margin: 100px auto 0;
	padding-left: 10px;
	background-color: pink;
}

.wrap li {
	background-color: yellowgreen;
}

.wrap>ul>li {
	float: left;
	margin-right: 10px;
	position: relative;
}

.wrap a {
	display: block;
	height: 30px;
	width: 100px;
	text-decoration: none;
	color: #000;
	line-height: 30px;
	text-align: center;
}

.wrap li ul {
	position: absolute;
	top: 30px;
	display: none;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script>
	//入口函数
	$(document).ready(function() {
		//需求：鼠标放入一级li中，让他里面的ul显示。移开隐藏。
		var jqli = $(".wrap>ul>li");

		//绑定事件
		jqli.mouseenter(function() {
			//这个位置用到了this.
			// console.log(this);  //打印结果是js中的dom对象。注意：jquery对象绑定的事件中，this指js中的dom对象。【重要】

			//让this中的ul显示出来。
			//                原生 js 的做法是：this.children[1].style.display = "block";
			//把js的dom对象包装为jquery对象，然后用jquery方法操作
			$(this).children("ul").show();
		});

		//绑定事件：鼠标移开时，隐藏下拉菜单
		jqli.mouseleave(function() {
			$(this).children("ul").hide();
		});
	});
</script>
</head>

<body>
	<div class="wrap">
		<ul>
			<li><a href="javascript:void(0);">一级菜单1</a>
				<ul>
					<li><a href="javascript:void(0);">二级菜单1</a></li>
					<li><a href="javascript:void(0);">二级菜单2</a></li>
					<li><a href="javascript:void(0);">二级菜单3</a></li>
				</ul></li>
			<li><a href="javascript:void(0);">一级菜单1</a>
				<ul>
					<li><a href="javascript:void(0);">二级菜单1</a></li>
					<li><a href="javascript:void(0);">二级菜单2</a></li>
					<li><a href="javascript:void(0);">二级菜单3</a></li>
				</ul></li>
			<li><a href="javascript:void(0);">一级菜单1</a>
				<ul>
					<li><a href="javascript:void(0);">二级菜单1</a></li>
					<li><a href="javascript:void(0);">二级菜单2</a></li>
					<li><a href="javascript:void(0);">二级菜单3</a></li>
				</ul></li>
		</ul>
	</div>
</body>
</html>
