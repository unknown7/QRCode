<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="dwr/util.js"></script>
<script type="text/javascript" src="dwr/engine.js"></script>
<script type="text/javascript" src="dwr/interface/messagePush.js"></script>

<script type="text/javascript">
	//这个方法用来启动该页面的ReverseAjax功能
	dwr.engine.setActiveReverseAjax(true);
	//设置在页面关闭时，通知服务端销毁会话
	dwr.engine.setNotifyServerOnPageUnload(true);
	//这个函数是提供给后台推送的时候 调用的
	function show(id, user, loginStatus) {
		var _id = $("input[type=hidden]").val();
		if (id == _id && loginStatus == true) {
			$("#content").text(user + " 登录成功！");
		} else if (id == _id && loginStatus == false) {
			$("#content").text(user + " 正在登录...");
		}
	}
</script>

</head>
<body>
	<img alt="" src="${ctx }/QRCode.do">
	
	<input type="hidden" value="${sid }">
	
	<div id="content" style="width: 200px; height: 30px; border: 1px solid; text-align: center; padding: 5px;"></div>
</body>
</html>