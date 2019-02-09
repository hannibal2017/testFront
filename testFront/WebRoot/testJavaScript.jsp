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
	src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script type="text/javascript">
	<!-- javasript 测试练习 -->
	/* var obj = new Object();

	//向obj中添加一个name属性
	obj.name = "孙悟空";

	//向obj中添加一个gender属性
	obj.gender = "男";

	//向obj中添加一个age属性
	obj.age = 18;

	console.log(JSON.stringify(obj)); // 将 obj 以字符串的形式打印出来
	console.log(obj); */
	/* var obj = new Object();
	obj.sayName = function() {
		console.log('smyhvae');
	};

	console.log(obj.sayName); //没加括号，获取的是对象
	console.log('-----------');
	console.log(obj.sayName()); //加了括号，执行函数内容，并执行函数体的内容 */
	var myJson = {
        "name": "smyhvae",
        "aaa": 111,
        "bbb": 222
    };

    //json遍历的方法：for...in...
    for (var key in myJson) {
        console.log(key);   //获取 键
        console.log(myJson[key]); //获取 值（第二种属性绑定和获取值的方法）
        console.log("------");
    }
    
    
    
	$(document).ready(function() {
		$("a").click(function() {
			var href = this.href;
			var args = {
				"time" : new Date()
			};
			$("#content").load(href, args);
			return false;
		});
	});
</script>
</head>

<body>
	<a href="helloAjax.txt">txt</a>
	<div id="content"></div>
</body>
</html>
