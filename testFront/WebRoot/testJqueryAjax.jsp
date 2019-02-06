<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- 
jquery load方法，是最简单最常用的方法。
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
	src="http://ajax.googleapis.com/ajax/libs
/jquery/1.4.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("a").click(function(){
   	var href = this.href;
   	var args = {"time" : new Date()};
   	$("#content").load(href,args);
   	return false;
  });
});
</script>	
</head>

<body>
	<a href="helloAjax.txt">txt</a>
	<div id = "content"></div>
</body>
</html>
