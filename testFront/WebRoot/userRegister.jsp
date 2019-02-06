<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- 
 用户名校验例子
 1，获取输入的值
 2，创建一个servlet
 3,调用jQuery的post方法
 4，把结果输出到对应的div
 -->
<head>
<base href="<%=basePath%>">

<title>用户注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- <script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs
/jquery/1.4.0/jquery.min.js"></script> -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $(":input[name = 'name']").change(function(){
    var value = $(this).val();
    value = $.trim(value);
    if (value != ""){
       var url = "${pageContext.request.contextPath}/valiateUsername";
       var args = {"name" : value,"time" : new Date()};
       $.post(url,args,function(data){
         $("#messages").html(data);
        });
    }
  });
});
</script>	
</head>

<body>
	用户名：
	<input type="text" name="name">
	<br>
	<input type="submit" value="Submit" />
	<br>
	<div id = "messages"></div>
</body>
</html>
