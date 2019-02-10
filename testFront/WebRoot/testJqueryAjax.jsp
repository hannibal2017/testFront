<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- 
jquery ajax常用的三种方法：
 1、load方法，是最简单最常用的方法。
 2、get方法。可能返回缓存数据。
 3、post方法。不会缓存数据，并且常用于连同请求一起发送数据
 -->
<head>
<base href="<%=basePath%>">

<title>test jquery ajax</title>

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
<script type="text/javascript">
	$(document).ready(function() {
		<!-- first: load -->
		$("a:eq(0)").click(function() {
			var href = this.href;
			var args = {
				"time" : new Date()
			};
			$("#content").load(href, args);
			return false;
		});
		<!-- second: get -->
		$("a:eq(1)").click(function() {
			/* $.get("helloAjax.txt", function(data,status) {
				alert("data: " + data + "\nstatus : " + status);
			}); */
			$.get("helloAjax.txt", function(data, status) {
				alert("数据get：" + data + "\n状态：" + status);
			});
			return false;
		});

	<!-- third: post -->	
		$("a:eq(2)").click(function() {
			/* $.get("helloAjax.txt", function(data,status) {
				alert("data: " + data + "\nstatus : " + status);
			}); */
			$.post("helloAjax.txt",
			 {
			   name:"luo",
			   age:28
			 },
			 function(data, status) {
				alert("数据post：" + data + "\n状态：" + status);
			});
			return false;
		});
	});
</script>
</head>

<body>
	<a href="helloAjax.txt">load</a>
	<div id="content"></div>
	<br>
	<a href="helloAjax.txt">send get</a>
	<br>
	<br>
	<a href="helloAjax.txt">send post</a>
</body>
</html>
