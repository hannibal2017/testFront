<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 突出显示 -->
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

body {
	background: #000;
}

.wrap {
	margin: 100px auto 0;
	width: 630px;
	height: 394px;
	padding: 10px 0 0 10px;
	background: #000;
	overflow: hidden;
	border: 1px solid #fff;
}

.wrap li {
	float: left;
	margin: 0 10px 10px 0;
}

.wrap img {
	display: block;
	border: 0;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script>
	jQuery(window).ready(function() {
		//需求：鼠标放入li中，其他的li半透明，当前盒子的opacity值为1
		$(".wrap").find("li").mouseenter(function() {
			//链式编程
			$(this).css("opacity", 1).siblings("li").css("opacity", 0.4);
		});

		//离开wrap的时候所有的li的全部opacity值为1；
		$(".wrap").mouseleave(function() {
			$(this).children().children("li").css("opacity", 1);
		//                $(".wrap li").css("opacity",1);
		});
	});
</script>
</head>

<body>
	<div class="wrap">
	<ul>
        <li><a href="#"><img src="images/01.jpg" alt=""/></a></li>
        <li><a href="#"><img src="images/02.jpg" alt=""/></a></li>
        <li><a href="#"><img src="images/03.jpg" alt=""/></a></li>
        <li><a href="#"><img src="images/04.jpg" alt=""/></a></li>
        <li><a href="#"><img src="images/05.jpg" alt=""/></a></li>
        <li><a href="#"><img src="images/06.jpg" alt=""/></a></li>
    </ul>
</div>
</body>
</html>
