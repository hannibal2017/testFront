<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 手风琴效果 -->
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
	padding: 0;
	margin: 0;
}

ul {
	list-style-type: none;
}

.parentWrap {
	width: 200px;
	text-align: center;
}

.menuGroup {
	border: 1px solid #999;
	background-color: #e0ecff;
}

.groupTitle {
	display: block;
	height: 20px;
	line-height: 20px;
	font-size: 16px;
	border-bottom: 1px solid #ccc;
	cursor: pointer;
}

.menuGroup>div {
	height: 200px;
	background-color: #fff;
	display: none;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script>
	$(function() {
		//需求：鼠标点击span，让他下面的div显示出来。让其他的div隐藏。
		$(".parentWrap span").click(function() {
			//                $(this).next().show();
			//                //让其他的隐藏
			//                //点击的span的父亲li，的所有的兄弟元素li，的孩子元素div全部隐藏。
			//                $(this).parent("li").siblings("li").children("div").hide();
			//连式编程
			$(this).next().show().parent("li").siblings("li").find("div").hide();
		});
	})
</script>
</head>

<body>
	<ul class="parentWrap">
		<li class="menuGroup"><span class="groupTitle">标题1</span>
			<div>我是弹出来的div1</div></li>
		<li class="menuGroup"><span class="groupTitle">标题2</span>
			<div>我是弹出来的div2</div></li>
		<li class="menuGroup"><span class="groupTitle">标题3</span>
			<div>我是弹出来的div3</div></li>
		<li class="menuGroup"><span class="groupTitle">标题4</span>
			<div>我是弹出来的div4</div></li>
	</ul>
</body>
</html>