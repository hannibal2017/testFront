<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 鼠标悬停变色 -->
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script>
	$(function () {

            //需求；隔行变色；鼠标悬停时，还要变色。
            var jqli1 = $("li:odd");
            var jqli2 = $("li:even");
            jqli1.css("background", "#cccccc");
            jqli2.css("background", "white");

            //鼠标悬停时变色
            var color = "";
            $("li").mouseenter(function () {
                color = $(this).css("background");  //先把之前的颜色保存下来，鼠标离开时还原
                $(this).css("background", "green");
            });
            //鼠标离开时，恢复为原来的颜色
            $("li").mouseleave(function () {
                $(this).css("background", color);
            });
        });
</script>
</head>

<body>
	<ul>
    <li>生命壹号，永不止步</li>
    <li>生命壹号，永不止步</li>
    <li>生命壹号，永不止步</li>
    <li>生命壹号，永不止步</li>
    <li>生命壹号，永不止步</li>
    <li>生命壹号，永不止步</li>
</ul>

</body>
</html>
